<?php 
	// Load the header files first
	header("Expires: 0"); 
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); 
	header("cache-control: no-store, no-cache, must-revalidate"); 
	header("Pragma: no-cache");

	// Load necessary files then...
	require_once('../initialize.php');
	
	$action = $_REQUEST['action'];
	
	switch($action) 
	{			
		case "add":
			
			$Teams = new Teams();
			
			$Teams->slug 			= create_slug($_REQUEST['title']);
			$Teams->title    		= $_REQUEST['title'];	
			$Teams->sub_title    	= $_REQUEST['sub_title'];
				
			$Teams->content   	= $_REQUEST['content'];
			//$Teams->type 		= $_REQUEST['type'];	
			$Teams->meta_title		= $_REQUEST['meta_title'];
			$Teams->meta_keywords		= $_REQUEST['meta_keywords'];
			$Teams->meta_description	= $_REQUEST['meta_description'];
			
			$Teams->banner_image	= serialize(array_values(array_filter($_REQUEST['imageArrayname2'])));
								
			$Teams->status		= $_REQUEST['status'];
			$Teams->sortorder		= Teams::find_maximum();
			$Teams->added_date 	= registered();
			
			$checkDupliTitle = Teams::checkDupliTitle($Teams->title);			
			if($checkDupliTitle):
				echo json_encode(array("action"=>"warning","message"=>"Teams Title Already Exists."));		
				exit;		
			endif;
			
			$db->begin();
			if($Teams->save()): 
				

					$db->commit();
			   $message  = sprintf($GLOBALS['basic']['addedSuccess_'], "Teams Image '".$Teams->title."'");
			echo json_encode(array("action"=>"success","message"=>$message));
				log_action("Teams [".$Teams->title."]".$GLOBALS['basic']['addedSuccess'],1,3);
			else: $db->rollback();
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
			endif;				
		break;
		
		case "edit":			
			$Teams = Teams::find_by_id($_REQUEST['idValue']);
			
			if($Teams->title!=$_REQUEST['title']){
				$checkDupliTitle = Teams::checkDupliTitle($_REQUEST['title']);
				if($checkDupliTitle):
					echo json_encode(array("action"=>"warning","message"=>"Teams Title is already exist."));		
					exit;		
				endif;
			}

			$Teams->banner_image	= serialize(array_values(array_filter($_REQUEST['imageArrayname2'])));
			$Teams->slug 	   = create_slug($_REQUEST['title']);
			$Teams->title    = $_REQUEST['title'];	
			$Teams->sub_title = $_REQUEST['sub_title'];
			$Teams->content  = $_REQUEST['content'];	
			$Teams->status   = $_REQUEST['status'];	
			//$Teams->type 		= $_REQUEST['type'];
			$Teams->meta_title		= $_REQUEST['meta_title'];
			$Teams->meta_keywords		= $_REQUEST['meta_keywords'];
			$Teams->meta_description	= $_REQUEST['meta_description'];

			$db->begin();				
			if($Teams->save()):$db->commit();	
			   $message  = sprintf($GLOBALS['basic']['changesSaved_'], "Teams '".$Teams->title."'");
			   echo json_encode(array("action"=>"success","message"=>$message));
			   log_action("Teams ".$Teams->title." Edit Successfully",1,4);
			else:$db->rollback();echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;							
		break;
								
		case "delete":
			$id = $_REQUEST['id'];
			$record = Teams::find_by_id($id);
			log_action("Teams  [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
			$db->begin();
			$res = $db->query("DELETE FROM tbl_teams WHERE id='{$id}'");
  		    if($res):$db->commit();	else: $db->rollback();endif;
			reOrder("tbl_teams", "sortorder");						
			echo json_encode(array("action"=>"success","message"=>"Teams  [".$record->title."]".$GLOBALS['basic']['deletedSuccess']));							
		break;

		case "docSearch":
		$txt = $_REQUEST['txt'];
		$doccat = $_REQUEST['doccat'];
		$doclist=SubTeams::getDoctorbytype($txt,$doccat);
			foreach ($doclist as $docl) {
				$qual=unserialize($docl->qualification);
				$docl->qualification=$qual ;
			}
		
		echo json_encode(array_values($doclist));
		break;

		case "unseralizequal":
		$qual = $_REQUEST['qual'];
		$qalblock='';
		$qualif=unserialize($qual);
		foreach ($qualif as $quality) {
			$qalblock.=$quality.',';
		}
		
		echo $qalblock;
		break;
		
		case "toggleStatus":
			$id = $_REQUEST['id'];
			$record = Teams::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$db->begin();						
				$res   =  $record->save();
				   if($res):$db->commit();	else: $db->rollback();endif;
			echo "";
		break;

		case "bulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = Teams::find_by_id($allid[$i]);
				$record->status = ($record->status == 1) ? 0 : 1 ;
				$record->save();
			}
			echo "";
		break;
			
		case "bulkDelete":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			$db->begin();
			for($i=1; $i<count($allid); $i++){
						$db->query("DELETE FROM tbl_teams_sub WHERE type='".$allid[$i]."'");
				$res  = $db->query("DELETE FROM tbl_teams WHERE id='".$allid[$i]."'");
				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();
			reOrder("tbl_teams", "sortorder");
			
			if($return==1):
			    $message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Teams"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;
				
		case "sort":
			$id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
			$sortIds = $_REQUEST['sortIds'];
			datatableReordering('tbl_teams', $sortIds, "sortorder", '', '',1);
			$message  = sprintf($GLOBALS['basic']['sorted_'], "Teams "); 
			echo json_encode(array("action"=>"success","message"=>$message));
		break;				

		/*********************** Sub Doctor Transaction Section *************************/
		case "addSubdoctor":
			$record	= new SubTeams();

			$newArr = array();
			$fparent = (isset($_REQUEST['fparent']) and !empty($_REQUEST['fparent']))?$_REQUEST['fparent']:'';
			$feature = (isset($_REQUEST['feature']) and !empty($_REQUEST['feature']))?$_REQUEST['feature']:'';
			if(!empty($fparent) and !empty($feature)){				
				foreach($fparent as $kk=>$vv){ 
					$final_fpt = !empty($fparent[$kk])?$fparent[$kk]:'';
					$final_ft  = !empty($feature[$kk])?$feature[$kk]:'';
					$newArr[$kk] = array($final_fpt,$final_ft); 
				}
			}
			$record->qualification  = serialize($_REQUEST['qualification']);
			$record->type 			= $_REQUEST['type'];
			$record->slug 			= create_slug($_REQUEST['title']);
			$record->title 			= $_REQUEST['title'];
			$record->nmc 		= $_REQUEST['nmc'];
			$record->qualification  = serialize($_REQUEST['qualification']);
			$record->image2			= !empty($_REQUEST['imageArrayname2'])?$_REQUEST['imageArrayname2']:'';
			$record->image 			= !empty($_REQUEST['imageArrayname'])? serialize(array_values(array_filter($_REQUEST['imageArrayname']))):'';
			// $record->offers			= !empty($_REQUEST['imageArrayoffer'])? serialize(array_values(array_filter($_REQUEST['imageArrayoffer']))):'';	
			//$record->pac_icon  = serialize(array_values(array_filter($_REQUEST['imageArrayname5'])));		
			// $record->feature		= serialize($newArr);	
			
			// $record->offer_link		= $_REQUEST['offer_link'];	
			$record->content 		= $_REQUEST['content'];			
			$record->status			= $_REQUEST['status'];
			// $record->number_room    = !empty($_REQUEST['number_room'])?$_REQUEST['number_room']:'';
			// $record->currency 		= !empty($_REQUEST['currency'])?$_REQUEST['currency']:'';			
			// $record->people_qnty 	= !empty($_REQUEST['people_qnty'])?$_REQUEST['people_qnty']:'';
			// $record->extra_bed 	= !empty($_REQUEST['extra_bed'])?$_REQUEST['extra_bed']:'';
			$record->onep_price 	= !empty($_REQUEST['onep_price'])?$_REQUEST['onep_price']:'';
			// $record->twop_price 	= !empty($_REQUEST['twop_price'])?$_REQUEST['twop_price']:'';
			// $record->threep_price 	= !empty($_REQUEST['threep_price'])?$_REQUEST['threep_price']:'';
			$record->meta_title		= $_REQUEST['meta_title'];
			$record->meta_keywords		= $_REQUEST['meta_keywords'];
			$record->meta_description	= $_REQUEST['meta_description'];
			$record->sortorder		= SubTeams::find_maximum_byparent("sortorder",$_REQUEST['type']);														
			$record->added_date 	= registered();

			$db->begin();
			if($record->save()): $db->commit();
				$message  = sprintf($GLOBALS['basic']['addedSuccess_'], "Sub Doctor '".$record->title."'");
				echo json_encode(array("action"=>"success","message"=>$message));
				log_action($message,1,3);
			else: $db->rollback(); echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['unableToSave']));
			endif;								
		break;

		case "editSubdoctor":
			$record = SubTeams::find_by_id($_REQUEST['idValue']);

			$newArr = array();
			$fparent = (isset($_REQUEST['fparent']) and !empty($_REQUEST['fparent']))?$_REQUEST['fparent']:'';
			$feature = (isset($_REQUEST['feature']) and !empty($_REQUEST['feature']))?$_REQUEST['feature']:'';
			if(!empty($fparent) and !empty($feature)){				
				foreach($fparent as $kk=>$vv){ 
					$final_fpt = !empty($fparent[$kk])?$fparent[$kk]:'';
					$final_ft  = !empty($feature[$kk])?$feature[$kk]:'';
					$newArr[$kk] = array($final_fpt,$final_ft); 
				}
			}

			$record->type 			= $_REQUEST['type'];
			$record->slug 			= create_slug($_REQUEST['title']);
			$record->title 			= $_REQUEST['title'];
			$record->nmc 		= $_REQUEST['nmc'];
			$record->qualification  = serialize($_REQUEST['qualification']);		
		    $record->image2			= !empty($_REQUEST['imageArrayname2'])?$_REQUEST['imageArrayname2']:'';	
			$record->image 			= !empty($_REQUEST['imageArrayname'])? serialize(array_values(array_filter($_REQUEST['imageArrayname']))):'';
			// $record->offers			= !empty($_REQUEST['imageArrayoffer'])? serialize(array_values(array_filter($_REQUEST['imageArrayoffer']))):'';		
			//$record->pac_icon  = serialize(array_values(array_filter($_REQUEST['imageArrayname5'])));		
			// $record->feature		= serialize($newArr);
			$record->content 		= $_REQUEST['content'];
			// $record->offer_link		= $_REQUEST['offer_link'];
			$record->status			= $_REQUEST['status'];						
			// $record->number_room    = !empty($_REQUEST['number_room'])?$_REQUEST['number_room']:'';
			// $record->currency 		= !empty($_REQUEST['currency'])?$_REQUEST['currency']:'';			
			// $record->people_qnty 	= !empty($_REQUEST['people_qnty'])?$_REQUEST['people_qnty']:'';
			// $record->extra_bed 	= !empty($_REQUEST['extra_bed'])?$_REQUEST['extra_bed']:'';
			$record->onep_price 	= !empty($_REQUEST['onep_price'])?$_REQUEST['onep_price']:'';
			// $record->twop_price 	= !empty($_REQUEST['twop_price'])?$_REQUEST['twop_price']:'';
			// $record->threep_price 	= !empty($_REQUEST['threep_price'])?$_REQUEST['threep_price']:'';
			$record->meta_title		= $_REQUEST['meta_title'];
			$record->meta_keywords		= $_REQUEST['meta_keywords'];
			$record->meta_description	= $_REQUEST['meta_description'];
			
			$db->begin();

			if($record->save()):
					$db->commit();
			   $message  = sprintf($GLOBALS['basic']['changesSaved_'], "Sub Doctor '".$record->title."'");
			   echo json_encode(array("action"=>"success","message"=>$message));
			   log_action($message,1,4);
			else: $db->rollback();echo json_encode(array("action"=>"notice","message"=>$GLOBALS['basic']['noChanges']));
			endif;	
		break;

		case "deletesubdoctor":
			$id = $_REQUEST['id'];
			$record = SubTeams::find_by_id($id);
			log_action("Sub Doctor [".$record->title."]".$GLOBALS['basic']['deletedSuccess'],1,6);
			$db->begin();

			$db->query("DELETE FROM tbl_teams_sub WHERE id='{$id}'");
			// $res = $db->query("DELETE FROM tbl_facilityOptions WHERE facility_id='{$id}'");
  		    // if($res):$db->commit();	else: $db->rollback();endif;
			  $db->commit();
			reOrder("tbl_teams_sub", "sortorder");						
			echo json_encode(array("action"=>"success","message"=>"Sub Doctor [".$record->title."]".$GLOBALS['basic']['deletedSuccess']));							
		break;

		case "SubtoggleStatus":
			$id = $_REQUEST['id'];
			$record = SubTeams::find_by_id($id);
			$record->status = ($record->status == 1) ? 0 : 1 ;
			$db->begin();						
				$res   =  $record->save();
				if($res):$db->commit();	else: $db->rollback();endif;
			echo "";
		break;

		case "subbulkToggleStatus":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			for($i=1; $i<count($allid); $i++){
				$record = SubTeams::find_by_id($allid[$i]);
				$record->status = ($record->status == 1) ? 0 : 1 ;
				$record->save();
			}
			echo "";
		break;
			
		case "subbulkDelete":
			$id = $_REQUEST['idArray'];
			$allid = explode("|", $id);
			$return = "0";
			$db->begin();
			for($i=1; $i<count($allid); $i++){
				$record = SubTeams::find_by_id($allid[$i]);
				$res  = $db->query("DELETE FROM tbl_teams_sub WHERE id='".$allid[$i]."'");				
				reOrderSub("tbl_teams_sub", "sortorder", "type",$record->type);

				$return = 1;
			}
			if($res)$db->commit();else $db->rollback();

			if($return==1):
			    $message  = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Doctor"); 
				echo json_encode(array("action"=>"success","message"=>$message));
			else:
				echo json_encode(array("action"=>"error","message"=>$GLOBALS['basic']['noRecords']));
			endif;
		break;

		case "subSort":
			$id 	 = $_REQUEST['id']; 	// IS a line containing ids starting with : sortIds
			$sortIds = $_REQUEST['sortIds'];
			$posId   = SubTeams::field_by_id($id,'type');
			datatableReordering('tbl_teams_sub', $sortIds, "sortorder", "type",$posId,1);
			$message  = sprintf($GLOBALS['basic']['sorted_'], "Sub Doctor"); 
			echo json_encode(array("action"=>"success","message"=>$message));
		break;	

		case "getRoomsdetails":
			$result='';
			$getdate = addslashes($_REQUEST['getdate']);
			$roomCat  = SubTeams::getDoctor_limit(1);
	    	if($roomCat):
	    		foreach($roomCat as $roomRow){ 
	    			$rec = SubTeams::find_by_id($roomRow->id);
	    			$nos = json_decode($rec->image, true);
	    			global $db;
	    			$sql = "SELECT ss.season,ss.date_from, ss.date_to, rp.one_person, rp.two_person, rp.three_person
	    					FROM 
	    					tbl_seasion AS ss
	    					INNER JOIN tbl_room_price AS rp
	    					ON ss.id = rp.season_id
	    					WHERE ss.date_to>='$getdate' LIMIT 1";
	    			$dtResult = $db->query($sql);

	    			$sql2 = "SELECT rp.one_person, rp.two_person, rp.three_person
	    			 		FROM 
	    			 		tbl_room_price AS rp
	    			 		WHERE rp.season_id='0' AND rp.room_id= $rec->id LIMIT 1";
	    			$dfltResult = $db->query($sql2);
	    				
	    			$myArr='';
	    			if($db->num_rows($dtResult)>0){
	    				$myArr = $dtResult;
	    			}else{
	    				$myArr = $dfltResult;
	    			}

	    			$romprice = array();
	    			while ($row = $db->fetch_array($myArr)) {
	    				foreach($row as $key=>$val){$$key=$val;}
	    				$romprice = array(1=>$one_person,2=>$two_person,3=>$three_person);
	    			}
	    	  $result.='<div class="main_imgdiv">
	    					<img alt="'.$rec->title.'" src="'.IMAGE_PATH.'subdoctor/'.$nos[0].'">
	    				</div>
	    				<div class="main_listing">';
	    				for($i=1; $i<=$rec->people_qnty; $i++){ 
					$result.='<ul>
							 	<li>'.$i.'</li>
							 	<li>'.$rec->currency.' '.$romprice[$i].'</li>
							 	<li>
								 	<select name="" id="" class="select-room" data-person="'.$i.'" data-currency="'.$rec->currency.'" data-price="'.$romprice[$i].'"
                                    data-room="'.$rec->title.'">
								 		<option value="0">0</option>';
				    					//  for($j=1; $j<=$rec->no_rooms; $j++){
				    					// 	$result.='<option value="'.$j.'">'.$j.'</option>';
				    					// } 
						  $result.='</select>
							 	</li>
							 	<li><span class="ind-total">0</span></li>
							</ul>
							<div class="clear"></div>';
						 } 								
				$result.='</div>
						<div class="clear"></div>';
    	  		 } 
			endif;

			echo json_encode(array("roomresult"=>$result));
		break;
	}
?>