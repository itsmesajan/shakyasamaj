<?php
$siteRegulars = Config::find_by_id(1);
if(defined('HOME_PAGE')){
    $noticeContent = $noticeLists = $noticeList = '';
    $noticeDetails = Notice::get_allNotice(6);
    $totalNotice = count($noticeDetails);
    foreach($noticeDetails as $key => $notice){
        $linkType = $notice->linktype == 0 ? '' : 'target="_blank" rel="noopener"';
        $linkSrc = !empty($notice->linksrc) && $notice->linksrc != '#' ?  $notice->linksrc : "javascript:void(0);";
        if(empty($notice->file)){
            $noticeList .= '
                <li><a href="'. $linkSrc .'" '. $linkType .'>'. $notice->title .'</a></li>
            ';
        }else{
            $noticeList .= '
                <li><a href="'. IMAGE_PATH .'notice/'. $notice->file .'" target="_blank" rel="noopener">'. $notice->title .'</a></li>
            ';
        }

        
        if($key != 0 && ($key+1) % 3 == 0){
            $noticeLists .= '
                <div class="col-lg-4">
                    <ul class="rdn_list">
                        '. $noticeList .'
                    </ul>
                </div>
            ';
            $noticeList = '';
        }
        if(end($noticeDetails)->id == $noticeDetails[$key]->id){
            $noticeLists .= '
                <div class="col-lg-4">
                    <ul class="rdn_list">
                        '. $noticeList .'
                    </ul>
                </div>
            ';
            $noticeList = '';
        }
    }
    

    $noticeContent = '
            <section id="testimonial" class="blue-bg testimonial_box content d-none hide">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4">
                            <p class="rdn_subtext" data-cue="slideInUp" style="color:#fff;">Information</p>
                            <h2 class="rdn_title mb-lg-0">Our Latest Notices</h2>
                            <a href="'. BASE_URL .'notice-list" class="rdn_btn mt-3">Discover more</a>
                        </div>
                        '. $noticeLists .'
                        
                    </div>
                </div>
                <!-- /.container -->
            </section>
    ';

    $jVars['module:notice'] = $noticeContent;
}

if(defined('NOTICES_PAGE')){
    $allNotices = Notice::find_all();
    $siteRegulars = Config::find_by_id(1);
    
    $noticeBread = $noticeMainContent = '';
    $defaultImg = '';
    $imgSrc = '';
    if(!empty($siteRegulars->other_upload)){
        $defaultImg = SITE_ROOT . 'images/preference/other/' . $siteRegulars->other_upload;
    }
    if(!empty($siteRegulars->notice_upload)){
        $file_path = SITE_ROOT . 'images/preference/notice/' . $siteRegulars->notice_upload;
        if(file_exists($file_path)){
            $imgSrc = IMAGE_PATH . 'preference/notice/' . $siteRegulars->notice_upload;
        }else if(file_exists($defaultImg)){
            $imgSrc = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        }else{
            $imgSrc = BASE_URL . 'template/web/img/background/about.jpg';
        }
    }else if(file_exists($defaultImg)){
        $imgSrc = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
    }else{
        $imgSrc = BASE_URL . 'template/web/img/background/about.jpg';
    }

    $noticeBread = '
        <section id="hero" class="about-top" style="background-image: url(\''. $imgSrc .'\');">
            <div class="container about_inner">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 text-center">
                        <h1 class="hero_title" data-cue="slideInUp" data-delay="400">
                            Notices
                        </h1>
                    </div>
                    <!-- /.col-lg-6 offset-3 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
            <div class="mask mask_dark"></div>
        </section>
    ';
    foreach($allNotices as $notice){
        if($notice->status != 0){
            $linkType = $notice->linktype == 0 ? '' : 'target="_blank" rel="noopener"';
            $linkSrc = !empty($notice->linksrc) && $notice->linksrc != '#' ?  BASE_URL . $notice->linksrc : "javascript:void(0);";
            
            if(empty($notice->file)){
                $noticeMainContent .= '
                    <div class="col-lg-12 border border-2 rounded py-2 px-4 my-2">
                        <a href="'. $linkSrc .'" '. $linkType .'>
                            <p class="text-dark fs-5">'. $notice->title .'</p>
                        </a>
                    </div>
                ';
            }else{
                $noticeMainContent .= '
                    <div class="col-lg-12 border border-2 rounded py-2 px-4 my-2">
                        <a href="'. IMAGE_PATH .'notice/'. $notice->file .'" target="_blank" rel="noopener">
                            <p class="text-dark fs-5">'. $notice->title .'</p>
                        </a>
                    </div>
                ';
            }
        }
    }

    $jVars['module:notice-bread'] = $noticeBread;
    $jVars['module:notice-main'] = $noticeMainContent;
}
?>