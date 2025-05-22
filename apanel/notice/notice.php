<link href="<?php echo ASSETS_PATH; ?>uploadify/uploadify.css" rel="stylesheet" type="text/css"/>
<?php
$moduleTablename = "tbl_notice";    // Database table name
$moduleId = 36;                     // module id >>>>> tbl_modules
$moduleFoldername = "notice";       // Image folder name
$type = array('Publication', 'Notice');

if (isset($_GET['page']) && $_GET['page'] == "notice" && isset($_GET['mode']) && $_GET['mode'] == "list"):
    clearImages($moduleTablename, $moduleFoldername, 'file');
    clearImages($moduleTablename, $moduleFoldername . "/thumbnails", 'file');
    ?>
    <h3>
        List Notices
        <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);" onClick="AddNewNotice();">
            <span class="glyph-icon icon-separator"><i class="glyph-icon icon-plus-square"></i></span>
            <span class="button-content"> Add New </span>
        </a>
    </h3>
    <div class="my-msg"></div>
    <div class="example-box">
        <div class="example-code">
            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
                <thead>
                <tr>
                    <th style="display:none;"></th>
                    <th class="text-center"><input class="check-all" type="checkbox"/></th>
                    <th class="text-center">Title</th>
                    <th class="text-center">Author</th>
                    <th class="text-center">Notice Date</th>
                    <th class="text-center">Type</th>
                    <th class="text-center"><?php echo $GLOBALS['basic']['action']; ?></th>
                </tr>
                </thead>

                <tbody>
                <?php
                $records = Notice::find_by_sql("SELECT * FROM " . $moduleTablename . " ORDER BY sortorder DESC ");
                foreach ($records as $key => $record): ?>
                    <tr id="<?php echo $record->id; ?>">
                        <td style="display:none;"><?php echo $key + 1; ?></td>
                        <td><input type="checkbox" class="bulkCheckbox" bulkId="<?php echo $record->id; ?>"/></td>
                        <td>
                            <div class="col-md-7">
                                <a href="javascript:void(0);" onClick="editRecord(<?php echo $record->id; ?>);" class="loadingbar-demo"
                                   title="<?php echo $record->title; ?>"><?php echo $record->title; ?></a>
                            </div>
                        </td>
                        <td><?php echo $record->author; ?></td>
                        <td><?php echo date('F d, Y', strtotime($record->notice_date)); ?></td>
                        <td><?php echo $type[$record->type]; ?></td>
                        <td class="text-center">
                            <?php
                            $statusImage = ($record->status == 1) ? "bg-green" : "bg-red";
                            $statusText = ($record->status == 1) ? $GLOBALS['basic']['clickUnpub'] : $GLOBALS['basic']['clickPub'];
                            ?>
                            <a href="javascript:void(0);" class="btn small <?php echo $statusImage; ?> tooltip-button statusToggler"
                               data-placement="top" title="<?php echo $statusText; ?>" status="<?php echo $record->status; ?>"
                               id="imgHolder_<?php echo $record->id; ?>" moduleId="<?php echo $record->id; ?>">
                                <i class="glyph-icon icon-flag"></i>
                            </a>
                            <a href="javascript:void(0);" class="loadingbar-demo btn small bg-blue-alt tooltip-button" data-placement="top"
                               title="Edit" onclick="editRecord(<?php echo $record->id; ?>);">
                                <i class="glyph-icon icon-edit"></i>
                            </a>
                            <a href="javascript:void(0);" class="btn small bg-red tooltip-button" data-placement="top" title="Remove"
                               onclick="recordDelete(<?php echo $record->id; ?>);">
                                <i class="glyph-icon icon-remove"></i>
                            </a>
                            <input name="sortId" type="hidden" value="<?php echo $record->id; ?>">
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <div class="pad0L col-md-2">
            <select name="dropdown" id="groupTaskField" class="custom-select">
                <option value="0"><?php echo $GLOBALS['basic']['choseAction']; ?></option>
                <option value="delete"><?php echo $GLOBALS['basic']['delete']; ?></option>
                <option value="toggleStatus"><?php echo $GLOBALS['basic']['toggleStatus']; ?></option>
            </select>
        </div>
        <a class="btn medium primary-bg" href="javascript:void(0);" id="applySelected_btn">
            <span class="glyph-icon icon-separator float-right"><i class="glyph-icon icon-cog"></i></span>
            <span class="button-content"> Click </span>
        </a>
    </div>

<?php elseif (isset($_GET['mode']) && $_GET['mode'] == "addEdit"):
    if (isset($_GET['id']) && !empty($_GET['id'])):
        $noticeId = addslashes($_REQUEST['id']);
        $noticeInfo = Notice::find_by_id($noticeId);

        $status = ($noticeInfo->status == 1) ? "checked" : " ";
        $unstatus = ($noticeInfo->status == 0) ? "checked" : " ";

        $notice = ($noticeInfo->type == 1) ? "checked" : " ";
        $publication = ($noticeInfo->type == 0) ? "checked" : " ";

        $external = ($noticeInfo->linktype == 1) ? "checked" : " ";
        $internal = ($noticeInfo->linktype == 0) ? "checked" : " ";
    endif;
    ?>
    <h3>
        <?php echo (isset($_GET['id'])) ? 'Edit Notice' : 'Add Notice'; ?>
        <a class="loadingbar-demo btn medium bg-blue-alt float-right" href="javascript:void(0);" onClick="viewnoticelist();">
            <span class="glyph-icon icon-separator"><i class="glyph-icon icon-arrow-circle-left"></i></span>
            <span class="button-content"> Back </span>
        </a>
    </h3>

    <div class="my-msg"></div>

    <div class="example-box">
        <div class="example-code">
            <form action="" class="col-md-12 center-margin" id="notice_frm">
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Title :
                        </label>
                    </div>
                    <div class="form-input col-md-20">
                        <input placeholder="Title" class="col-md-6 validate[required,length[0,200]]" type="text" name="title" id="title"
                               value="<?php echo !empty($noticeInfo->title) ? $noticeInfo->title : ""; ?>">
                    </div>
                </div>

                <div class="form-row" style="display:none;">
                    <div class="form-label col-md-2">
                        <label for="">
                            Title (Nepali) :
                        </label>
                    </div>
                    <div class="form-input col-md-20">
                        <input placeholder="Title (Nepali)" class="col-md-6 validate[length[0,200]]" type="text" name="title_np"
                               id="title_np" value="<?php echo !empty($noticeInfo->title_np) ? $noticeInfo->title_np : ""; ?>">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Author :
                        </label>
                    </div>
                    <div class="form-input col-md-20">
                        <input placeholder="Author" class="col-md-6 validate[required,length[0,200]]" type="text" name="author" id="author"
                               value="<?php echo !empty($noticeInfo->author) ? $noticeInfo->author : User::field_by_id(1, 'first_name') ?>">
                    </div>
                </div>

                <div class="form-row" style="display:none;">
                    <div class="form-label col-md-2">
                        <label for="">
                            Author (Nepali) :
                        </label>
                    </div>
                    <div class="form-input col-md-20">
                        <input placeholder="Author (Nepali)" class="col-md-6 validate[required,length[0,200]]" type="text" name="author_np"
                               id="author_np"
                               value="<?php echo !empty($noticeInfo->author_np) ? $noticeInfo->author_np : User::field_by_id(1, 'first_name'); ?>">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Date :
                        </label>
                    </div>
                    <div class="form-input col-md-4">
                        <input placeholder="Notice Date" class="col-md-6 validate[] datepicker" type="text" name="notice_date"
                               id="notice_date" value="<?php echo !empty($noticeInfo->notice_date) ? $noticeInfo->notice_date : ""; ?>">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Link Type :
                        </label>
                    </div>
                    <div class="form-checkbox-radio col-md-9">
                        <input id="" class="custom-radio" type="radio" name="linktype" value="0"
                               onClick="linkTypeSelect(0);" <?php echo !empty($internal) ? $internal : "checked"; ?>>
                        <label for="">Internal Link</label>
                        <input id="" class="custom-radio" type="radio" name="linktype" value="1"
                               onClick="linkTypeSelect(1);" <?php echo !empty($external) ? $external : ""; ?>>
                        <label for="">External Link</label>
                    </div>
                </div>

                <div class="form-row">
            	<div class="form-label col-md-2">
                    <label for="">
                        Link :
                    </label>
                </div>
                <div class="form-input col-md-8">
                	<div class="col-md-4" style="padding-left:0px !important;">
                    	<input  placeholder="Link" class="validate[required,length[0,50]]" type="text" name="linksrc" id="linksrc" value="<?php echo !empty($noticeInfo->linksrc)?$noticeInfo->linksrc:"";?>">                    
                    </div>
                    
                	<div class="col-md-6 linkchange <?php if($noticeInfo->linktype == 1) echo "hide"; ?>" style="padding-left:0px !important;">
						<select data-placeholder="Select Link Page" class="col-md-4 chosen-select" id="linkPage">
                            <option value=""></option>
                            <?php 
                                $Lpageview = !empty($noticeInfo->linksrc)?$noticeInfo->linksrc:"";
                                $LinkTypeview = !empty($noticeInfo->linktype)?$noticeInfo->linktype:"";
                                // Article Page Link
                                echo Article::get_internal_link($Lpageview,$LinkTypeview);     
                                // Package Page Link
                                echo Subpackage::get_internal_link($Lpageview,$LinkTypeview);
                            ?>
                        </select>  
                    </div>                    
                </div>
            </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Upload File :
                        </label>
                    </div>

                    <?php if (!empty($noticeInfo->file)): ?>
                        <div class="col-md-3" id="removeSavedimg1">
                            <div class="infobox info-bg">
                                <div class="button-group">
                                    <style>
                                        .word-break p {
                                            white-space: pre-wrap;
                                            white-space: -moz-pre-wrap;
                                            white-space: -o-pre-wrap;
                                            word-wrap: break-word;
                                        }
                                    </style>
                                    <span class="word-break">
                                        <?php
                                        if (file_exists(SITE_ROOT . "images/notice/" . $noticeInfo->file)):
                                            $filesize = filesize(SITE_ROOT . "images/notice/" . $noticeInfo->file);
                                            echo '<p><a href="' . BASE_URL . "images/notice/" . $noticeInfo->file . '" target="_blank">' . $noticeInfo->file . '</a></p>';
                                            echo '<br> Size : ' . getFileFormattedSize($filesize);
                                        endif;
                                        ?>
                                    </span>
                                    <input type="hidden" name="imageArrayname" class=""
                                           value="<?php echo !empty($noticeInfo->file) ? $noticeInfo->file : ""; ?>"/>
                                    <a class="btn small float-right" href="javascript:void(0);" onclick="deleteSavedFile(1);">
                                        <i class="glyph-icon icon-trash-o"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                    <div class="form-input col-md-10 uploader1 <?php echo !empty($noticeInfo->file) ? "hide" : ""; ?>">
                        <input type="file" name="gallery_upload" id="gallery_upload" class="transparent no-shadow">
                        <label>
                            <small>Upload files. (*.pdf, *.doc, *.docx and image files)</small>
                        </label>
                    </div>
                    <!-- Upload user image preview -->
                    <div id="preview_Image"></div>
                </div>
                
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Image :
                        </label>
                    </div>

                    <?php if (!empty($noticeInfo->image)): ?>
                        <div class="col-md-2" id="removeSavedimg20">
                            <div class="infobox info-bg">
                                <div class="button-group" data-toggle="buttons">
                                    <span class="float-left">
                                        <?php
                                        if (file_exists(SITE_ROOT . "images/notice/image/" . $noticeInfo->image)):
                                            $filesize = filesize(SITE_ROOT . "images/notice/image/" . $noticeInfo->image);
                                            echo 'Size : ' . getFileFormattedSize($filesize);
                                        endif;
                                        ?>
                                    </span>
                                    <a class="btn small float-right" href="javascript:void(0);" onclick="deleteSavedNoticeimage(20);">
                                        <i class="glyph-icon icon-trash-o"></i>
                                    </a>
                                </div>
                                <img src="<?php echo IMAGE_PATH . 'notice/image/thumbnails/' . $noticeInfo->image; ?>" style="width:100%"/>
                                <input type="hidden" name="imageArrayname20"
                                    value="<?php echo $noticeInfo->image; ?>"/>
                            </div>
                        </div>
                    <?php endif; ?>
                    <div class="form-input col-md-10 uploader20 <?php echo !empty($noticeInfo->image) ? "hide" : ""; ?>">
                        <input type="file" name="event_upload" id="event_upload" class="transparent no-shadow">
                        <label>
                            <small>Image Dimensions (900 px X 900 px)
                            </small>
                        </label>
                    </div>
                    <!-- Upload user image preview -->
                    <div id="preview_Image20"></div>
                </div>

                <div class="form-row" style="display:none;">
                    <div class="form-label col-md-12">
                        <label for="">
                            Content :
                        </label>
                        <textarea name="content" id="content" class="large-textarea validate[required]"
                        ><?php echo !empty($noticeInfo->content) ? $noticeInfo->content : ""; ?></textarea>
                        <a class="btn medium bg-orange mrg5T hide" title="Read More" id="readMore" href="javascript:void(0);">
                            <span class="button-content">Read More</span>
                        </a>
                    </div>
                </div>

                <div class="form-row"  style="display:none;">
                    <div class="form-label col-md-12">
                        <label for="">
                            Content (Nepali) :
                        </label>
                        <textarea name="content_np" id="content_np" class="large-textarea validate[]"
                        ><?php echo !empty($noticeInfo->content_np) ? $noticeInfo->content_np : ""; ?></textarea>
                        <a class="btn medium bg-orange mrg5T hide" title="Read More" id="readMoreNp" href="javascript:void(0);">
                            <span class="button-content">Read More</span>
                        </a>
                    </div>
                </div>

                <div class="form-row" style="display:none;">
                    <div class="form-label col-md-2">
                        <label for="">
                            Type :
                        </label>
                    </div>

                    <div class="form-checkbox-radio col-md-9">
                        <input type="radio" class="custom-radio" name="type" id="check11"
                               value="1" <?php echo !empty($notice) ? $notice : "checked"; ?>>
                        <label for="">Notice</label>
                        <input type="radio" class="custom-radio" name="type" id="check01"
                               value="0" <?php echo !empty($publication) ? $publication : ""; ?>>
                        <label for="">Publication</label>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="">
                            Published :
                        </label>
                    </div>

                    <div class="form-checkbox-radio col-md-9">
                        <input type="radio" class="custom-radio" name="status" id="check1"
                               value="1" <?php echo !empty($status) ? $status : "checked"; ?>>
                        <label for="">Published</label>
                        <input type="radio" class="custom-radio" name="status" id="check0"
                               value="0" <?php echo !empty($unstatus) ? $unstatus : ""; ?>>
                        <label for="">Un-Published</label>
                    </div>
                </div>

                <button btn-action='0' type="submit" name="submit"
                        class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                    <span class="button-content">
                        Save
                    </span>
                </button>
                <button btn-action='1' type="submit" name="submit"
                        class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                    <span class="button-content">
                        Save & More
                    </span>
                </button>
                <button btn-action='2' type="submit" name="submit"
                        class="btn-submit btn large primary-bg text-transform-upr font-bold font-size-11 radius-all-4" id="btn-submit" title="Save">
                    <span class="button-content">
                        Save & quit
                    </span>
                </button>
                <input myaction='0' type="hidden" name="idValue" id="idValue" value="<?php echo !empty($noticeInfo->id) ? $noticeInfo->id : 0; ?>"/>
            </form>
        </div>
    </div>
    <script>
        var base_url = "<?php echo ASSETS_PATH; ?>";
        var editor_arr = ["content"];
        create_editor(base_url, editor_arr);
        var editor_arr_np = ["content_np"];
        create_editor_np(base_url, editor_arr_np);
    </script>

    <script type="text/javascript" src="<?php echo ASSETS_PATH; ?>uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript">
        // <![CDATA[
        $(document).ready(function () {
            $('#gallery_upload').uploadify({
                'swf': '<?php echo ASSETS_PATH;?>uploadify/uploadify.swf',
                'uploader': '<?php echo ASSETS_PATH;?>uploadify/uploadify_file.php',
                'formData': {PROJECT: '<?php echo SITE_FOLDER;?>', targetFolder: 'images/notice/', thumb_width: 200, thumb_height: 200},
                'method': 'post',
                'cancelImg': '<?php echo BASE_URL;?>uploadify/cancel.png',
                'auto': true,
                'multi': false,
                'hideButton': false,
                'buttonText': 'Upload file',
                'width': 125,
                'height': 21,
                'removeCompleted': true,
                'progressData': 'speed',
                'uploadLimit': 100,
                'fileTypeExts': '*.gif; *.jpg; *.jpeg;  *.png; *.GIF; *.JPG; *.JPEG; *.PNG; *.pdf; *.PDF; *.doc; *.DOC; *.docx; *.DOCX;',
                'buttonClass': 'button formButtons',
                /* 'checkExisting' : '/uploadify/check-exists.php',*/
                'onUploadSuccess': function (file, data, response) {
                    var filename = data;
                    $.post('<?php echo BASE_URL;?>apanel/notice/uploaded_file.php', {imagefile: filename}, function (msg) {
                        $('#preview_Image').html(msg).show();
                    });

                },
                'onDialogOpen': function (event, ID, fileObj) {
                },
                'onUploadError': function (file, errorCode, errorMsg, errorString) {
                    alert(errorMsg);
                },
                'onUploadComplete': function (file) {
                    //alert('The file ' + file.name + ' was successfully uploaded');
                }
            });
        });
        // ]]>

        $('#event_upload').uploadify({
            'swf': '<?php echo ASSETS_PATH;?>uploadify/uploadify.swf',
            'uploader': '<?php echo ASSETS_PATH;?>uploadify/uploadify.php',
            'formData': {
                PROJECT: '<?php echo SITE_FOLDER;?>',
                targetFolder: 'images/notice/image/',
                thumb_width: 200,
                thumb_height: 200
            },
            'method': 'post',
            'cancelImg': '<?php echo BASE_URL;?>uploadify/cancel.png',
            'auto': true,
            'multi': false,
            'hideButton': false,
            'buttonText': 'Upload Image',
            'width': 125,
            'height': 21,
            'removeCompleted': true,
            'progressData': 'speed',
            'uploadLimit': 1,
            'fileTypeExts': '*.gif; *.jpg; *.jpeg;  *.png; *.GIF; *.JPG; *.JPEG; *.PNG;',
            'buttonClass': 'button formButtons',
            /* 'checkExisting' : '/uploadify/check-exists.php',*/
            'onUploadSuccess': function (file, data, response) {
                var filename = data;
                $.post('<?php echo BASE_URL;?>apanel/notice/uploaded_event_image.php', {imagefile: filename}, function (msg) {
                    $('#preview_Image20').html(msg).show();
                });

            },
            'onDialogOpen': function (event, ID, fileObj) {
            },
            'onUploadError': function (file, errorCode, errorMsg, errorString) {
                alert(errorMsg);
            },
            'onUploadComplete': function (file) {
                //alert('The file ' + file.name + ' was successfully uploaded');
            }
        });
    </script>
<?php endif; ?>