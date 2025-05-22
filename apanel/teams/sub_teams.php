<?php
$subdoctorTablename  = "tbl_teams_sub"; // Database table name
if(isset($_GET['page']) && $_GET['page'] == "teams" && isset($_GET['mode']) && $_GET['mode']=="subteamslist"):
$id = intval(addslashes($_GET['id']));
JsonclearImages($subdoctorTablename, "subteams");
JsonclearImages($subdoctorTablename, "subteams/thumbnails");
    clearImages($subdoctorTablename,'subteams','image2');
    clearImages($subdoctorTablename,'subteams/thumbnails','image2');
?>
<h3>
List Sub Teams ["<?php echo Teams::getDoctorName($id);?>"]
<a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);" onClick="AddNewSubdoctor(<?php echo $id;?>);">
    <span class="glyph-icon icon-separator">
    	<i class="glyph-icon icon-plus-square"></i>
    </span>
    <span class="button-content"> Add New </span>
</a>
<a class="loadingbar-demo btn medium bg-blue-alt float-right mrg5R" href="javascript:void(0);" onClick="viewDoctorlist();">
    <span class="glyph-icon icon-separator">
        <i class="glyph-icon icon-arrow-circle-left"></i>
    </span>
    <span class="button-content"> Back </span>
</a>
</h3>
<div class="my-msg"></div>
<div class="example-box">
    <div class="example-code">    
    <table cellpadding="0" cellspacing="0" border="0" class="table" id="subexample">
        <thead>
            <tr>
               <th style="display:none;"></th>
               <th class="text-center"><input class="check-all" type="checkbox" /></th>
               <th>Title</th> 
               <th>Position</th> 
               <th class="text-center"><?php echo $GLOBALS['basic']['action'];?></th>
            </tr>
        </thead> 
            
        <tbody>
            <?php $records = SubTeams::find_by_sql("SELECT * FROM ".$subdoctorTablename." WHERE type=".$id." ORDER BY sortorder DESC ");	
				  foreach($records as $key=>$record): ?>    
            <tr id="<?php echo $record->id;?>">
            	<td style="display:none;"><?php echo $key+1;?></td>
                <td><input type="checkbox" class="bulkCheckbox" bulkId="<?php echo $record->id;?>" /></td>
                <td>
                    <div class="col-md-7">
                        <a href="javascript:void(0);" onClick="editsubdoctor(<?php echo $record->type;?>,<?php echo $record->id;?>);" class="loadingbar-demo" title="<?php echo $record->title;?>"><?php echo $record->title;?></a>
                    </div>
                </td>       
                <!-- <td class="text-center">
                    <?php $countChild = Review::getTotalSub($record->id); ?>
                    <a class="primary-bg medium btn loadingbar-demo" title="" onClick="viewhallList(<?php echo $record->id ?>);" href="javascript:void(0);">
                        <span class="button-content">
                            <span class="badge bg-orange radius-all-4 mrg5R" title=""
                                    data-original-title="Badge with tooltip"><?php echo $countChild; ?></span>
                            <span class="text-transform-upr font-bold font-size-11">view list</span>
                        </span>
                    </a>
                </td>       -->
                <td class="text-center">
                    <?php $countChild = SubTeams::find_position_by_type($id); ?>
                    <?php echo $record->nmc; ?>
                    <!--<span><?php echo $teamTitle; ?></span>-->
                </td>      
                <td class="text-center">
					<?php	
                        $statusImage = ($record->status == 1) ? "bg-green" : "bg-red" ; 
                        $statusText = ($record->status == 1) ? $GLOBALS['basic']['clickUnpub'] : $GLOBALS['basic']['clickPub'] ; 
                    ?>                                             
                    <a href="javascript:void(0);" class="btn small <?php echo $statusImage;?> tooltip-button statusSubToggler" data-placement="top" title="<?php echo $statusText;?>" status="<?php echo $record->status;?>" id="imgHolder_<?php echo $record->id;?>" moduleId="<?php echo $record->id;?>">
                        <i class="glyph-icon icon-flag"></i>
                    </a>
                    <a href="javascript:void(0);" class="loadingbar-demo btn small bg-blue-alt tooltip-button" data-placement="top" title="Edit" onclick="editsubdoctor(<?php echo $record->type;?>,<?php echo $record->id;?>);">
                        <i class="glyph-icon icon-edit"></i>
                    </a>
                    <a href="javascript:void(0);" class="btn small bg-red tooltip-button" data-placement="top" title="Remove" onclick="subrecordDelete(<?php echo $record->id;?>);">
                        <i class="glyph-icon icon-remove"></i>
                    </a>
                    <input name="sortId" type="hidden" value="<?php echo $record->id;?>">
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    </div>
<div class="pad0L col-md-2">
<select name="dropdown" id="groupTaskField" class="custom-select">
    <option value="0"><?php echo $GLOBALS['basic']['choseAction'];?></option>
    <option value="subdelete"><?php echo $GLOBALS['basic']['delete'];?></option>
    <option value="subtoggleStatus"><?php echo $GLOBALS['basic']['toggleStatus'];?></option>
</select>
</div>
<a class="btn medium primary-bg" href="javascript:void(0);" id="applySelected_btn">
    <span class="glyph-icon icon-separator float-right">
      <i class="glyph-icon icon-cog"></i>
    </span>
    <span class="button-content"> Submit </span>
</a>
</div>

<?php elseif(isset($_GET['mode']) && $_GET['mode'] == "addEditsubdoctor"): 
$pid   = addslashes($_REQUEST['id']);
if(isset($_GET['subid']) and !empty($_GET['subid'])):
	$subdoctorId 	= addslashes($_REQUEST['subid']);
	$subdoctorInfo  = SubTeams::find_by_id($subdoctorId);
	$status 	= ($subdoctorInfo->status==1)?"checked":" ";
	$unstatus 	= ($subdoctorInfo->status==0)?"checked":" ";
endif;	
?>
<h3>
<?php echo (isset($_GET['subid']))?'Edit Sub team':'Add Sub team';?>
<a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);" onClick="viewSubdoctorlist(<?php echo $pid;?>);">
    <span class="glyph-icon icon-separator">
    	<i class="glyph-icon icon-arrow-circle-left"></i>
    </span>
    <span class="button-content"> Back </span>
</a>
</h3>

<div class="my-msg"></div>
<div class="example-box">
    <div class="example-code">
    	<form action="" class="col-md-12 center-margin" id="subdoctor_frm">        	
            <div class="form-row">
                <div class="form-label col-md-2">
                    <label for="">
                        Name :
                    </label>
                </div>                
                <div class="form-input col-md-20">
                    <input placeholder="team member name" class="col-md-6 validate[required,length[0,50]]" type="text" name="title" id="title" value="<?php echo !empty($subdoctorInfo->title)?$subdoctorInfo->title:"";?>">
                </div>                
            </div>   
            <div class="form-row">
                <div class="form-label col-md-2">
                    <label for="">
                        Position :
                    </label>
                </div>                
                <div class="form-input col-md-20">
                    <input placeholder="Position" class="col-md-6 " name="nmc" type="text" value="<?php echo !empty($subdoctorInfo->nmc)?$subdoctorInfo->nmc:"";?>">
                </div>                
            </div>  


                 
            <?php if(!empty($subdoctorInfo->qualification)){
                $yRec = unserialize($subdoctorInfo->qualification);
                if(count($yRec)>0){
                    $yi=1;
                    foreach($yRec as $yRow){ $rand = rand(1,999); ?>
                        <div class="form-row my-style" style="display:none;">     
                            <div class="form-label col-md-2">
                                <?php if($yi==1):?>
                                <label for="">Qualification :</label>
                                <?php endif;?>
                            </div>       
                            <div class="form-input col-md-12" id="NewRow<?php echo $rand;?>">                    
                                <div class="col-md-4">                                    
                                    <input placeholder="Qualification" type="text" name="qualification[]" id="qualification" class="validate[]" value="<?php echo $yRow;?>">
                                </div>
                                <div>
                                    <a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addnewRowQ(this);">
                                        <i class="glyph-icon icon-plus-square"></i>
                                    </a>
                                    <?php if($yi!=1):?>
                                    <a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow(<?php echo $rand;?>);">
                                        <i class="glyph-icon icon-minus-square"></i>
                                    </a>
                                    <?php endif;?>
                                </div>                                          
                            </div>                                                  
                        </div>
                    <?php $yi++; }
                }
            }else{ ?>
                <div class="form-row my-style" style="display:none;">     
                    <div class="form-label col-md-2">
                        <label for="">
                        Qualification :
                        </label>
                    </div>           
                    <div class="form-input col-md-12" id="NewRow0">                    
                        <div class="col-md-4">
                            <input placeholder="Qualification" type="text" name="qualification[]" id="qualification" class="validate[]">
                        </div>
                        <div>
                            <a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addnewRowQ(this);">
                                <i class="glyph-icon icon-plus-square"></i>
                           </a>
                         </div> 
                     </div>
                </div>
            <?php } ?>
            <div id="qualification-field"></div>                                           

            <div class="form-row">
            	<div class="form-label col-md-2">
                    <label for="">
                       Image :
                    </label>
                </div> 
                
                <?php if(!empty($subdoctorInfo->image2)):?>
                <div class="col-md-3" id="removeSavedimg1">
                    <div class="infobox info-bg">                            	                                
                        <div class="button-group" data-toggle="buttons">
                            <span class="float-left">
                                <?php 
                                    if(file_exists(SITE_ROOT."images/subteams/image/".$subdoctorInfo->image2)):
                                        $filesize = filesize(SITE_ROOT."images/subteams/image/".$subdoctorInfo->image2);
                                        echo 'Size : '.getFileFormattedSize($filesize);
                                    endif;
                                ?>
                            </span> 
                            <a class="btn small float-right" href="javascript:void(0);" onclick="deleteSavedDoctorimage(1);">
                                <i class="glyph-icon icon-trash-o"></i>
                            </a>                                                       
                        </div>
                        <img src="<?php echo IMAGE_PATH.'subteams/image/thumbnails/'.$subdoctorInfo->image2;?>"  style="width:100%"/>                                                                                   
                    </div> 
                </div>
                <?php endif;?>
                <div class="form-input col-md-10 uploader <?php echo !empty($subdoctorInfo->image2)?"hide":"";?>">          
                   <input type="file" name="background_upload" id="background_upload" class="transparent no-shadow">
                   <label><small>Image Dimensions (100 px X 100 px)</small></label>
                </div>                
                <!-- Upload user image preview -->
            	<div id="preview_Image"><input type="hidden" name="imageArrayname2" value="<?php echo !empty($subdoctorInfo->image2)?$subdoctorInfo->image2:"";?>" class="" /></div>
            </div>

                   
            
            <div class="form-row" style="display:none;">
                <div class="form-label col-md-10">
                    <label for="">
                        Content :
                    </label>
                    <textarea name="content" id="content" class="large-textarea"><?php echo !empty($subdoctorInfo->content)?$subdoctorInfo->content:"";?></textarea>
                    <a class="btn medium bg-orange mrg5T" title="Read More" id="readMore" href="javascript:void(0);">
                        <span class="button-content">Read More</span>
                    </a>
                </div>            
            </div>    
           
            <div class="form-row">   
            	<div class="form-label col-md-2">
                    <label for="">
                        Published :
                    </label>
                </div>             
                <div class="form-checkbox-radio col-md-9">
                    <input type="radio" class="custom-radio" name="status" id="check1" value="1" <?php echo !empty($status)?$status:"checked";?>>
                    <label for="">Published</label>
                    <input type="radio" class="custom-radio" name="status" id="check0" value="0" <?php echo !empty($unstatus)?$unstatus:"";?>>
                    <label for="">Un-Published</label>
                </div>                
            </div> 

            <!-- Meta Tags-->
            <div class="form-row">              
                <div class="form-checkbox-radio col-md-9">
                    <a class="btn medium bg-blue" href="javascript:void(0);" onClick="toggleMetadata();">
                        <span class="glyph-icon icon-separator float-right">
                            <i class="glyph-icon icon-caret-down"></i>
                        </span>
                        <span class="button-content"> Metadata Info </span>
                    </a>
                </div>                
            </div>  
            <div class="form-row <?php echo (!empty($subdoctorInfo->meta_keywords) || !empty($subdoctorInfo->meta_description) || !empty($subdoctorInfo->meta_title))?'':'hide';?> metadata"> 
                <div class="col-md-12">  
                    <div class="form-input col-md-12">
                        <input placeholder="Meta Title" class="col-md-6 validate[required]" type="text" name="meta_title" id="meta_title" value="<?php echo !empty($subdoctorInfo->meta_title)?$subdoctorInfo->meta_title:"";?>">
                    </div>
                    <br />
                    <div class="form-input col-md-12"> 
                        <div class="row">
                            <div class="col-md-6">
                                <textarea placeholder="Meta Keyword" name="meta_keywords" id="meta_keywords" class="character-keyword validate[required]"><?php echo !empty($subdoctorInfo->meta_keywords)?$subdoctorInfo->meta_keywords:"";?></textarea>
                                <div class="keyword-remaining clear input-description">250 characters left</div>
                            </div>  
                            <div class="col-md-6">
                                <textarea placeholder="Meta Description" name="meta_description" id="meta_description" class="character-description validate[required]"><?php echo !empty($subdoctorInfo->meta_description)?$subdoctorInfo->meta_description:"";?></textarea>
                                <div class="description-remaining clear input-description">160 characters left</div>
                            </div>  
                        </div>      
                    </div> 
                </div> 
                       
            </div>
                                   
            <button btn-action='0' type="submit" name="submit" class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                <span class="button-content">
                    Save
                </span>
            </button>
            <button btn-action='1' type="submit" name="submit" class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                <span class="button-content">
                    Save & More
                </span>
            </button>
            <button btn-action='2' type="submit" name="submit" class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                <span class="button-content">
                    Save & quit
                </span>
            </button>
            <input myaction='0' type="hidden" name="idValue" id="idValue" value="<?php echo !empty($subdoctorInfo->id)?$subdoctorInfo->id:0;?>" />
            <input type="hidden" name="type" id="type" value="<?php echo !empty($subdoctorInfo->type)?$subdoctorInfo->type:$pid;?>" />
         </form>    
    </div>
</div>  
<script>
var base_url =  "<?php echo ASSETS_PATH; ?>";
var editor_arr = ["content"];
create_editor(base_url,editor_arr);
</script>

<link href="<?php echo ASSETS_PATH; ?>uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo ASSETS_PATH;?>uploadify/jquery.uploadify.min.js"></script>
<script type="text/javascript">
   // <![CDATA[
	$(document).ready(function() {
	$('#background_upload').uploadify({
	'swf'  : '<?php echo ASSETS_PATH;?>uploadify/uploadify.swf',
	'uploader'   : '<?php echo ASSETS_PATH;?>uploadify/uploadify.php',
	'formData'   : {PROJECT : '<?php echo SITE_FOLDER;?>',targetFolder:'images/subteams/image/',thumb_width:200,thumb_height:200},
	'method'     : 'post',
	'cancelImg'  : '<?php echo BASE_URL;?>uploadify/cancel.png',
	'auto'       : true,
	'multi'      : false,	
	'hideButton' : false,	
	'buttonText' : 'Upload Image',
	'width'      : 125,
	'height'	 : 21,
	'removeCompleted' : true,
	'progressData' : 'speed',
	'uploadLimit' : 100,
	'fileTypeExts' : '*.gif; *.jpg; *.jpeg;  *.png; *.GIF; *.JPG; *.JPEG; *.PNG;',
	 'buttonClass' : 'button formButtons',
   /* 'checkExisting' : '/uploadify/check-exists.php',*/
	'onUploadSuccess' : function(file, data, response) {
		$('#uploadedImageName').val('1');
		var filename =  data;
		$.post('<?php echo BASE_URL;?>apanel/teams/uploaded_image_sub2.php',{imagefile:filename},function(msg){			
			   $('#preview_Image').html(msg).show();
			}); 
			
	},
	'onDialogOpen'      : function(event,ID,fileObj) {		
	},
	'onUploadError' : function(file, errorCode, errorMsg, errorString) {
		   alert(errorMsg);
		},
	'onUploadComplete' : function(file) {
		  //alert('The file ' + file.name + ' was successfully uploaded');
		} 	
  });
});
	// ]]>
</script>
<?php endif; 
include("review.php");?>