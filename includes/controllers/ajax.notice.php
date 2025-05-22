<?php
// Load the header files first
header("Expires: 0");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("cache-control: no-store, no-cache, must-revalidate");
header("Pragma: no-cache");

// Load necessary files then...
require_once('../initialize.php');

$action = $_REQUEST['action'];

switch ($action) {

    case "add":
        $record = new Notice();

        $record->slug           = create_slug($_REQUEST['title']);
        $record->title          = $_REQUEST['title'];
        $record->title_np       = $_REQUEST['title_np'];
        $record->author         = $_REQUEST['author'];
        $record->author_np      = $_REQUEST['author_np'];
        $record->notice_date    = $_REQUEST['notice_date'];
        $record->linktype    = $_REQUEST['linktype'];
        $record->image		= !empty($_REQUEST['imageArrayname20']) ? $_REQUEST['imageArrayname20'] : '';
        $record->linksrc        = (!empty($_REQUEST['linksrc'])) ? $_REQUEST['linksrc'] : '';
        $record->file           = (!empty($_REQUEST['imageArrayname'])) ? $_REQUEST['imageArrayname'] : '';
        $record->content        = $_REQUEST['content'];
        $record->content_np     = $_REQUEST['content_np'];
        $record->type           = $_REQUEST['type'];

        $record->status         = $_REQUEST['status'];
        $record->sortorder      = Notice::find_maximum();
        $record->added_date     = registered();
        $record->modified_date  = registered();

        $db->begin();
        if ($record->save()): $db->commit();
            $message = sprintf($GLOBALS['basic']['addedSuccess_'], "Notice '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action("Notice [" . $record->title . "]" . $GLOBALS['basic']['addedSuccess'], 1, 3);
        else:$db->rollback();
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['unableToSave']));
        endif;
    break;

    case "edit":
        $record = Notice::find_by_id($_REQUEST['idValue']);

        $record->slug           = create_slug($_REQUEST['title']);
        $record->title          = $_REQUEST['title'];
        $record->title_np       = $_REQUEST['title_np'];
        $record->author         = $_REQUEST['author'];
        $record->author_np      = $_REQUEST['author_np'];
        $record->notice_date    = $_REQUEST['notice_date'];
        $record->linktype    = $_REQUEST['linktype'];
        $record->image		= !empty($_REQUEST['imageArrayname20']) ? $_REQUEST['imageArrayname20'] : '';
        $record->linksrc        = (!empty($_REQUEST['linksrc'])) ? $_REQUEST['linksrc'] : '';
        $record->file           = (!empty($_REQUEST['imageArrayname'])) ? $_REQUEST['imageArrayname'] : '';
        $record->content        = $_REQUEST['content'];
        $record->content_np     = $_REQUEST['content_np'];
        $record->type           = $_REQUEST['type'];

        $record->status         = $_REQUEST['status'];
        $record->modified_date  = registered();

        $db->begin();
        if ($record->save()): $db->commit();
            $message = sprintf($GLOBALS['basic']['changesSaved_'], "Notice '" . $record->title . "'");
            echo json_encode(array("action" => "success", "message" => $message));
            log_action("Notice [" . $record->title . "] Edit Successfully", 1, 4);
        else: $db->rollback();
            echo json_encode(array("action" => "notice", "message" => $GLOBALS['basic']['noChanges']));
        endif;
    break;

    case "delete":
        $id         = $_REQUEST['id'];
        $record     = Notice::find_by_id($id);
        $db->begin();
        $res        = $db->query("DELETE FROM tbl_notice WHERE id='{$id}'");
        if ($res) $db->commit(); else $db->rollback();
        reOrder("tbl_notice", "sortorder");

        $message    = sprintf($GLOBALS['basic']['deletedSuccess_'], "Notice '" . $record->title . "'");
        echo json_encode(array("action" => "success", "message" => $message));
        log_action("Notice [" . $record->title . "]" . $GLOBALS['basic']['deletedSuccess'], 1, 6);
    break;

    // Module Setting Sections  >> <<
    case "toggleStatus":
        $id             = $_REQUEST['id'];
        $record         = Notice::find_by_id($id);
        $record->status = ($record->status == 1) ? 0 : 1;
        $record->save();
        echo "";
    break;

    case "bulkToggleStatus":
        $id         = $_REQUEST['idArray'];
        $allid      = explode("|", $id);
        $return     = "0";
        for ($i = 1; $i < count($allid); $i++) {
            $record = Notice::find_by_id($allid[$i]);
            $record->status = ($record->status == 1) ? 0 : 1;
            $record->save();
        }
        echo "";
    break;

    case "bulkDelete":
        $id         = $_REQUEST['idArray'];
        $allid      = explode("|", $id);
        $return     = "0";
        $db->begin();
        for ($i = 1; $i < count($allid); $i++) {
            $record = Notice::find_by_id($allid[$i]);
            log_action("Notice  [" . $record->title . "]" . $GLOBALS['basic']['deletedSuccess'], 1, 6);
            $res    = $db->query("DELETE FROM tbl_notice WHERE id='" . $allid[$i] . "'");
            $return = 1;
        }
        if ($res) $db->commit(); else $db->rollback();
        reOrder("tbl_notice", "sortorder");

        if ($return == 1):
            $message = sprintf($GLOBALS['basic']['deletedSuccess_bulk'], "Notice");
            echo json_encode(array("action" => "success", "message" => $message));
        else:
            echo json_encode(array("action" => "error", "message" => $GLOBALS['basic']['noRecords']));
        endif;
    break;

    case "sort":
        $id         = $_REQUEST['id'];    // IS a line containing ids starting with : sortIds
        $sortIds    = $_REQUEST['sortIds'];
        datatableReordering('tbl_notice', $sortIds, "sortorder", '', '', 1);
        $message    = sprintf($GLOBALS['basic']['sorted_'], "Notices");
        echo json_encode(array("action" => "success", "message" => $message));
    break;
}
?>