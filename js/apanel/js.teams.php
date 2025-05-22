<script language="javascript">

function getLocation(){
	return '<?php echo BASE_URL;?>includes/controllers/ajax.teams.php';
}
function getreviewLocation() {
        return '<?php echo BASE_URL;?>includes/controllers/ajax.review.php';
    }
function getTableId(){
	return 'table_dnd';
}

$(document).ready(function() {
	oTable = $('#example').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	}).rowReordering({ 
		  sURL:"<?php echo BASE_URL;?>includes/controllers/ajax.teams.php?action=sort",
		  fnSuccess: function(message) { 
					var msg = jQuery.parseJSON(message);
					showMessage(msg.action,msg.message);
			   }
		   });
});

$(document).ready(function() {
	oTable = $('#subexample').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	}).rowReordering({ 
		  sURL:"<?php echo BASE_URL;?>includes/controllers/ajax.teams.php?action=subSort",
		  fnSuccess: function(message) { 
					var msg = jQuery.parseJSON(message);
					showMessage(msg.action,msg.message);
			   }
		   });
});


$(document).ready(function(){	
	$('.btn-submit').on('click',function(){
		var actVal = $(this).attr('btn-action');
		$('#idValue').attr('myaction',actVal);
	})	
	// form submisstion actions		
	jQuery('#doctor_frm').validationEngine({
		autoHidePrompt:true,
		promptPosition : "bottomLeft",
		scroll: true,
		onValidationComplete: function(form, status){
			if(status==true){	
				$('.btn-submit').attr('disabled', 'true');
				var action = ($('#idValue').val() == 0) ? "action=add&" : "action=edit&" ;
				for ( instance in CKEDITOR.instances )
                CKEDITOR.instances[instance].updateElement();
				var data = $('#doctor_frm').serialize();
				queryString = action+data;
				$.ajax({
				   type: "POST",
				   dataType:"JSON",
				   url:  getLocation(),
				   data: queryString,
				   success: function(data){
					   var msg = eval(data);
					   if(msg.action=='warning'){
						   showMessage(msg.action,msg.message);
						   setTimeout( function(){$('.my-msg').html('');},3000);
						   $('.btn-submit').removeAttr('disabled');						   			   
		 				   $('.formButtons').show();
						   return false
					   }
					   if(msg.action=='success'){
						   showMessage(msg.action,msg.message);	
						   var actionId = $('#idValue').attr('myaction');
						   if(actionId==2)
						   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/list";},3000);						   	
						   if(actionId==1)	
						   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/addEdit";},3000);						   	
						   if(actionId=='0')
						   	setTimeout( function(){window.location.href="";},3000);		
					   }
					   if(msg.action=='notice'){
						   showMessage(msg.action,msg.message);		   					   
						   setTimeout( function(){window.location.href=window.location.href;},3000);
					   }			   					   
					   if(msg.action=='error'){
						   showMessage(msg.action,msg.message);						   
						   $('#buttonsP img').remove();
		 				   $('.formButtons').show();
						   return false;
					   }
				   }
				});
			return false;
			}
		}
	})
/***************************************** View Sub Doctor Lists *******************************************/
	jQuery('#subdoctor_frm').validationEngine({
	prettySelect : true,
	autoHidePrompt:true,
	useSuffix: "_chosen",
	promptPosition : "bottomLeft",
	scroll: true,
	onValidationComplete: function(form, status){
		if(status==true){	
			var Re = $("#type").val();
			$('.btn-submit').attr('disabled', 'true');
			var action = ($('#idValue').val() == 0) ? "action=addSubdoctor&" : "action=editSubdoctor&" ;
			for ( instance in CKEDITOR.instances )
            CKEDITOR.instances[instance].updateElement();

			var data = $('#subdoctor_frm').serialize();
			queryString = action+data;
			$.ajax({
			   type: "POST",
			   dataType:"JSON",
			   url:  getLocation(),
			   data: queryString,
			   success: function(data){
				   var msg = eval(data);
				   if(msg.action=='warning'){
					   showMessage(msg.action,msg.message);
					   $('.btn-submit').removeAttr('disabled');						   			   
					   $('.formButtons').show();
					   return false
				   }
				   if(msg.action=='success'){
					   showMessage(msg.action,msg.message);	 
					   var actionId = $('#idValue').attr('myaction');
					   if(actionId==2)
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/subteamslist/"+Re;},3000);						   	
					   if(actionId==1)	
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/addEditsubdoctor/"+Re;},3000);						   	
					   if(actionId==0)
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/subteamslist/"+Re;},3000);	 
				   }
				   if(msg.action=='notice'){
					   showMessage(msg.action,msg.message);		   					   
					   setTimeout( function(){window.location.href=window.location.href;},3000);
				   }			   					   
				   if(msg.action=='error'){
					   showMessage(msg.action,msg.message);
					   $('#buttonsP img').remove();
					   $('.formButtons').show();
					   return false;
				   }
			   }
			});
		return false;
		}
	}
})


// form submisstion actions
jQuery('#user_review_frm').validationEngine({
            prettySelect: true,
            useSuffix: "_chosen",
            autoHidePrompt: true,
            scroll: true,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    $('#btn-submit').attr('disabled', 'true');
                    var action = ($('#idValue').val() == 0) ? "action=add&" : "action=edit&";
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();
                    var data = $('#user_review_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getreviewLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                $('#btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
					   showMessage(msg.action,msg.message);	 
					   var actionId = $('#idValue').attr('myaction');
					   if(actionId==2)
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/reviewlist/"+Re;},3000);						   	
					   if(actionId==1)	
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/addEditreview/"+Re;},3000);						   	
					   if(actionId==0)
					   	setTimeout( function(){window.location.href="<?php echo ADMIN_URL?>teams/reviewlist/"+Re;},3000);	 
				   }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        })   

	
});


/***************************************** Add New Row *******************************************/
function addRowss() {	
	var rowNum = Math.floor((Math.random()*999)+1);	
	var newRow ='<div class="form-row my-style" id="NewRow'+rowNum+'">';
        newRow +='<div class="form-label col-md-2"></div>';
		newRow +='<div class="form-input col-md-12">';                    
			newRow+='<div class="col-md-4">';
				newRow+='<input placeholder="Facility Title" type="text" name="facilityOption[]" id="facilityOption" class="validate[required]">';
			newRow+='</div>';
			newRow+='<div>';
				newRow+='<a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addRowss(this);">';
					newRow+='<i class="glyph-icon icon-plus-square"></i>';
			   newRow+='</a>';
			    newRow+='<a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow('+rowNum+');">';
					newRow+='<i class="glyph-icon icon-minus-square"></i>';
			   newRow+='</a>';
			 newRow+='</div>';                                          
		 newRow+='</div>';
		 newRow+='</div>';
	
	$('#option-field').append(newRow);
}

/***************************************** Delete Add Row *******************************************/
function deletenewRow(rnum)
{	
	/*var x = confirm("Are you sure you want to delete?");
	if (x){*/		
		$('#NewRow'+rnum).remove();
	/*}else{
	return false;		
   }*/	
}

// Edit records
function editRecord(Re)
{
	$.ajax({
	   type: "POST",
	   dataType:"JSON",
	   url:  getLocation(),
	   data: 'action=editExistsRecord&id='+Re,
	   success: function(data){
		   var msg = eval(data);
		   $("#title").val(msg.title);
		   $("#idValue").val(msg.editId);		   
	   }
	});
}
		
// Deleting Record
function recordDelete(Re){
	$('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"Doctor")?>');															
	$('.pText').html('Click on yes button to delete this doctor permanently.!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$.ajax({
			   type: "POST",
			   dataType:"JSON",
			   url:  getLocation(),
			   data: 'action=delete&id='+Re,
			   success: function(data){
				 var msg = eval(data);  
				 showMessage(msg.action,msg.message);
				 $('#'+Re).remove();
				 reStructureList(getTableId());
			   }
			});
		}else{Re=null;}
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
}


// Deleting Record
function subrecordDelete(Re){
	$('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"Doctor")?>');															
	$('.pText').html('Click on yes button to delete this doctor permanently.!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$.ajax({
			   type: "POST",
			   dataType:"JSON",
			   url:  getLocation(),
			   data: 'action=deletesubdoctor&id='+Re,
			   success: function(data){
				 var msg = eval(data);  
				 showMessage(msg.action,msg.message);
				 $('#'+Re).remove();
				 reStructureList(getTableId());
			   }
			});
		}else{Re=null;}
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
}

// Deleting Record
function recordReviewDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "review")?>');
        $('.pText').html('Click on yes button to delete this review permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getreviewLocation(),
                    data: 'action=delete&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }
	

/*************************************** Toggle Meta tags********************************************/	
function toggleMetadata(){
	$( ".metadata" ).slideToggle("slow",function(){});
}

/***************************************** View Doctor Lists *******************************************/
function viewDoctorlist()
{
	window.location.href="<?php echo ADMIN_URL?>teams/list";
}



/***************************************** Add New Doctor *******************************************/
function AddNewDoctor()
{
	window.location.href="<?php echo ADMIN_URL?>teams/addEdit";
}

/***************************************** Edit records *****************************************/
function editRecord(Re)
{
	window.location.href="<?php echo ADMIN_URL?>teams/addEdit/"+Re;
}



/***************************************** View Subdoctor Lists *******************************************/
function viewSubdoctorlist(Re)
{
	window.location.href="<?php echo ADMIN_URL?>teams/subteamslist/"+Re;
}


function viewhallList(Re){
        window.location.href = "<?php echo ADMIN_URL?>teams/reviewlist/" + Re;
    }
/***************************************** Add New Subdoctor *******************************************/
function AddNewSubdoctor(Re)
{
	window.location.href="<?php echo ADMIN_URL?>teams/addEditsubdoctor/"+Re;
}
/***************************************** Add New Subdoctor *******************************************/

function viewreviewlist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>teams/reviewlist/"+Re;
    }
function addReview(Re) {
        window.location.href = "<?php echo ADMIN_URL?>teams/addEditreview/"+Re;
    }
	function editReview(Pid,Re)
{
	window.location.href="<?php echo ADMIN_URL?>teams/addEditreview/"+Pid+"/"+Re;
}

	

/***************************************** Edit Subdoctor records *****************************************/
function editsubdoctor(Pid,Re)
{
	window.location.href="<?php echo ADMIN_URL?>teams/addEditsubdoctor/"+Pid+"/"+Re;
}

/******************************** Remove temp upload image ********************************/
function deleteTempimage(Re)
{
	$('#previewRoomsimage'+Re).fadeOut(1000,function(){$('#previewRoomsimage'+Re).remove();});
}

function viewsubimagelist(Re)
{
	window.location.href="<?php echo ADMIN_URL?>teams/doctorImageList/"+Re;
}

/******************************** Remove User saved Sub Doctor images ********************************/
function deleteSavedimage(Re)
{
	$('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"image")?>');															
	$('.pText').html('Click on yes button to delete this image permanently.!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$.ajax({
			   type: "POST",
			   dataType:"JSON",
			   url:  getLocation(),
			   data: 'action=deleteSubimage&id='+Re,
			   success: function(data){
				 var msg = eval(data);  
				 if(msg.action=='success'){
					 $('.removeSavedimg'+Re).fadeOut(1000,function(){$('.removeSavedimg'+Re).remove();});
				 }
			   }
			});
		}else{Re='';}
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
}

/******************************** Remove User saved Doctor images ********************************/
function deleteSavedDoctorimage(Re)
{
	$('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'],"image")?>');															
	$('.pText').html('Click on yes button to delete this image permanently.!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$('#removeSavedimg'+Re).fadeOut(1000,function(){$('#removeSavedimg'+Re).remove(); $('.uploader').fadeIn(500);});
		}else{Re='';}
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
		$('#preview_Image').html('');
	});	
}

/***************************************** Add New Row *******************************************/
function addnewRow() {	
	var rowNum = Math.floor((Math.random()*999)+1);	
	var newRow ='<div class="form-row my-style" id="NewRow'+rowNum+'">';
        newRow +='<div class="form-label col-md-2"></div>';
		newRow +='<div class="form-input col-md-12">';                    
			newRow+='<div class="col-md-4">';
				newRow+='<input placeholder="Facility Name" type="text" name="facility[]" id="facility" class="validate[length[0,50]]">';
			newRow+='</div>';
			newRow+='<div>';
				newRow+='<a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addnewRow(this);">';
					newRow+='<i class="glyph-icon icon-plus-square"></i>';
			   newRow+='</a>';
			    newRow+='<a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow('+rowNum+');">';
					newRow+='<i class="glyph-icon icon-minus-square"></i>';
			   newRow+='</a>';
			 newRow+='</div>';                                          
		 newRow+='</div>';
		 newRow+='</div>';
	
	$('#option-field').append(newRow);
}

/********* On change max no of guest ***********/
$(document).ready(function(){

	$('.maxppl').on('change',function(){
		var selVal = $(this).val();	
		if(selVal==1){
			$('.rmovprice1').removeClass('hide');
			$('.rmovprice2').addClass('hide');
			$('.rmovprice3').addClass('hide');
		}
		if(selVal==2){
			$('.rmovprice1').removeClass('hide');
			$('.rmovprice2').removeClass('hide');
			$('.rmovprice3').addClass('hide');
		}
		if(selVal==3){
			$('.rmovprice1').removeClass('hide');
			$('.rmovprice2').removeClass('hide');
			$('.rmovprice3').removeClass('hide');
		}
	});
	$('.maxppl').trigger('change');

	$(".character-details").keyup(function(){
		var a=125,b=$(this).val().length;
		if(b>=a)$(".description-remaining").text(" you have reached the limit");
		else{
			var c=a-b;$(".description-remaining").text(c+" characters left")
		}
	});
})

/***************************************** Delete Add Row *******************************************/
function deletenewRow(rnum)
{	
	/*var x = confirm("Are you sure you want to delete?");
	if (x){*/		
		$('#NewRow'+rnum).remove();
	/*}else{
	return false;		
   }*/	
}

/***************************************** Add New Row *******************************************/
function addnewRow2() {	
	var rowNum = Math.floor((Math.random()*999)+1);	
	var newRow ='<div class="form-row my-style" id="NewRowserv'+rowNum+'">';
        newRow +='<div class="form-label col-md-2"></div>';
		newRow +='<div class="form-input col-md-12">';                    
			newRow+='<div class="col-md-4">';
				newRow+='<input placeholder="Service Name" type="text" name="service[]" id="service" class="validate[length[0,50]]">';
			newRow+='</div>';
			newRow+='<div>';
				newRow+='<a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addnewRow2(this);">';
					newRow+='<i class="glyph-icon icon-plus-square"></i>';
			   newRow+='</a>';
			    newRow+='<a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow2('+rowNum+');">';
					newRow+='<i class="glyph-icon icon-minus-square"></i>';
			   newRow+='</a>';
			 newRow+='</div>';                                          
		 newRow+='</div>';
		 newRow+='</div>';
	
	$('#option-field2').append(newRow);
}

/***************************************** Delete Add Row *******************************************/
function deletenewRow2(rnum)
{	
	/*var x = confirm("Are you sure you want to delete?");
	if (x){*/		
		$('#NewRowserv'+rnum).remove();
	/*}else{
	return false;		
   }*/	
}

function deleteImgheader(Re)
{
	$('.MsgTitle').html('Do you want to delete the record ?');															
	$('.pText').html('Clicking yes will be delete this record permanently. !!!');
	$('.divMessageBox').fadeIn();
	$('.MessageBoxContainer').fadeIn(1000);
	
	$(".botTempo").on("click",function(){						
		var popAct=$(this).attr("id");						
		if(popAct=='yes'){
			$('#removeSavedimg'+Re).fadeOut(1000,function(){$('#removeSavedimg'+Re).remove(); $('.uploader').fadeIn(500);});
		}else{Re='';}
		$('.divMessageBox').fadeOut();
		$('.MessageBoxContainer').fadeOut(1000);
	});	
}

$(document).ready(function () {
            $('.user-team-select').change(function() {
				let $this = $(this);
			
                $.ajax({
                    type: "POST",
                    dataType:"JSON",
                    url: getLocation(),
                    data: `action=setteamsId&team_id=${$this.val()}`,
					
                    success: function(data){
                        var msg = eval(data);
                        if(msg.action=='success'){
                            location.reload();
                        } else {
                            alert('something went wrong')					   		
                        }
                    }
                });
            })
        })

/***************************************** Add New Row *******************************************/
function addnewRowQ() {	
	var rowNum = Math.floor((Math.random()*999)+1);	
	var newRow ='<div class="form-row my-style" id="NewRow'+rowNum+'">';
        newRow +='<div class="form-label col-md-2"></div>';
		newRow +='<div class="form-input col-md-12">';                    
			newRow+='<div class="col-md-4">';
				newRow+='<input placeholder="Qualification" type="text" name="qualification[]" id="qualification" class="validate[required]">';
			newRow+='</div>';
			newRow+='<div>';
				newRow+='<a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addnewRowQ(this);">';
					newRow+='<i class="glyph-icon icon-plus-square"></i>';
			   newRow+='</a>';
			    newRow+='<a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow('+rowNum+');">';
					newRow+='<i class="glyph-icon icon-minus-square"></i>';
			   newRow+='</a>';
			 newRow+='</div>';                                          
		 newRow+='</div>';
		 newRow+='</div>';
	
	$('#qualification-field').append(newRow);
}

$(function () {
        /*************************************** USer Image Status Toggler ******************************************/
        $('.reviewStatusToggle').on('click', function () {
            var Re = $(this).attr('moduleId');
            var status = $(this).attr('status');
            newStatus = (status == 1) ? 0 : 1;
            $.ajax({
                type: "POST",
                url: getreviewLocation(),
                data: "action=togglereviewStatus&id=" + Re,
                success: function (msg) {
                }
            });
            $(this).attr({'status': newStatus});
            if (newStatus == 1) {
                $('#imgRHolder_' + Re).removeClass("bg-red");
                $('#imgRHolder_' + Re).addClass("bg-green");
				$('#imgRHolder_' + Re).attr("data-original-title", "Click to Publish");
            } else {
                $('#imgRHolder_' + Re).removeClass("bg-green");
                $('#imgRHolder_' + Re).addClass("bg-red");
				$('#imgRHolder_' + Re).attr("data-original-title", "Click to Un-publish");
            }
        });
    });
</script>