<?php
$siteRegulars = Config::find_by_id(1);
$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = Article::find_by_id(22);
if (!empty($homearticle)) {
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $t .= ' <div class="col-xs-12">
                     <a href="' . BASE_URL . 'page/' . $homearticle->slug . '">
                    <div class="mosaic_container">
                        <img src="' . $imglink . '" alt="' . $homearticle->title . '" class="img-responsive add_bottom_30"><span class="caption_2"> ' . $homearticle->title . '</span>
                    </div>
                    </a>
                </div>';


}

$jVars['module:aboutarticle'] = $t;

/**
 *      Home page
 */
$resinnh = '';

if (defined('HOME_PAGE')) {
    $recInn = Article::homepageArticle();
    if (!empty($recInn)) {
        foreach ($recInn as $innRow) {
            // $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));
            // $readmore = '';
            // if (!empty($innRow->linksrc)) {
            //     $linkTarget = ($innRow->linktype == 1) ? ' target="_blank" ' : '';
            //     $linksrc = ($innRow->linktype == 1) ? $innRow->linksrc : BASE_URL . $innRow->linksrc;
            //     $readmore = '<a href="' . $linksrc . '" title="">see more</a>';
            // } else {
            //     $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . 'page/' . $innRow->slug . '" title="">Read more...</a>' : '';
            // }
            $resinnh .= '
                <div class="row align-items-center">
                    <div class="col-lg-5 position-relative">
                        <div class="row left_img">
                            <div class="col-6 crop_box mb-30 mb-lg-0 zindex-2" data-cues="slideInUp">
                                <img class="mb-30 img_high" src="'. BASE_URL .'template/web/img/box/box1.jpg" alt="image">
                                <img class="img_wide" src="'. BASE_URL .'template/web/img/box/box3.jpg" alt="image">
                            </div>
                            <div class="col-6 crop_box mb-30 mb-lg-0 zindex-2" data-cues="slideInUp">
                                <img class="img_wide mb-30" src="'. BASE_URL .'template/web/img/box/box2.jpg" alt="image">
                                <img class="img_high" src="'. BASE_URL .'template/web/img/box/box4.jpg" alt="image">
                            </div>
                            <div class="bg_dotted_img d-none d-lg-block"></div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.col-lg-5 -->

                    <div class="col-lg-6 offset-lg-1">
                        <p class="rdn_subtext">'. $innRow->sub_title .'</p>
                        <h2 class="rdn_title">'. $innRow->title .'</h2>
                        '. $innRow->content .'
                        <!-- /.row -->
                    </div>
                </div>
            ';
        }
    }

}

$jVars['module:home-article'] = $resinnh;

/**
 *      Inner page detail
 */

$aboutdetail = $imageList = $aboutbred = '';

if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Article::find_by_slug($slug);

    if (!empty($recRow)) {

        $imglink = BASE_URL . 'template/web/images/default.jpg';
        $defaultlink = BASE_URL . 'template/web/images/default.jpg';
        if ($recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);
            $file_path = SITE_ROOT . 'images/articles/' . $imageList[0];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'articles/' . $imageList[0];
            }elseif(!empty($siteRegulars->other_upload)){
                if(file_exists(SITE_ROOT . 'images/preference/' . $siteRegulars->other_upload)){
                    $imglink = IMAGE_PATH . 'preference/' . $siteRegulars->other_upload;
                }else{
                    $imglink = $defaultlink;
                }
            }
            else{
                $imglink = $defaultlink;
            }
        }elseif(!empty($siteRegulars->other_upload)){
            if(file_exists(SITE_ROOT . 'images/preference/' . $siteRegulars->other_upload)){
                $imglink = IMAGE_PATH . 'preference/' . $siteRegulars->other_upload;
            }else{
                $imglink = $defaultlink;
            }
        }
        
        $innerbred .= '
            <section id="hero" class="about-top" style="background-image: url(\''. $imglink .'\');">
                <div class="container about_inner">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3 text-center">
                            <p data-cue="slideInUp" class=d-none>Let\'s get to know each other</p>
                            <h1 class="hero_title" data-cue="slideInUp" data-delay="400">
                                '. $recRow->title .'
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

        // $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));
        // $content = !empty($rescontent[1]) ? $rescontent[1] : $rescontent[0];

        if($recRow->slug == 'about-us'){
            $aboutdetail .= '
                <section id="about" class="content about">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-5 position-relative">
                                <div class="row left_img">
                                    <div class="col-6 crop_box mb-30 mb-lg-0 zindex-2" data-cues="slideInUp">
                                        <img class="mb-30 img_high" src="'. BASE_URL .'template/web/img/box/box1.jpg" alt="image">
                                        <img class="img_wide" src="'. BASE_URL .'template/web/img/box/box3.jpg" alt="image">
                                    </div>
                                    <div class="col-6  crop_box mb-30 mb-lg-0 zindex-2" data-cues="slideInUp">
                                        <img class="img_wide mb-30" src="'. BASE_URL .'template/web/img/box/box2.jpg" alt="image">
                                        <img class="img_high" src="'. BASE_URL .'template/web/img/box/box4.jpg" alt="image">
                                    </div>
                                    <div class="bg_dotted_img d-none d-lg-block"></div>
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.col-lg-5 -->
    
                            <div class="col-lg-6 offset-lg-1">
                                <p class="rdn_subtext">'. $recRow->title .'</p>
                                <h2 class="rdn_title">'. $recRow->sub_title .'</h2>
                                '. $recRow->content .'
                                <!-- /.row -->
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                </section>
            ';
        }else{
            $aboutdetail .= '
                <section id="about" class="content about">
                    <div class="container">
                        '. $recRow->content .'
                    </div>
                </section>
            ';
        }

    } else {
        redirect_to(BASE_URL);
    }
}

$jVars['module:inner-about-detail'] = $aboutdetail;
$jVars['module:inner-about-bread'] = $innerbred;


$restyp = '';

$typRow = Article::get_by_type();
if (!empty($typRow)) {
    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($typRow->content));
    $readmore = '';
    if (!empty($typRow->linksrc)) {
        $linkTarget = ($typRow->linktype == 1) ? ' target="_blank" ' : '';
        $linksrc = ($typRow->linktype == 1) ? $typRow->linksrc : BASE_URL . $typRow->linksrc;
        $readmore = '<a class="text-link link-direct" href="' . $linksrc . '">see more</a>';
    } else {
        $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . $typRow->slug . '">Read more...</a>' : '';
    }
    $restyp .= '<h3 class="h3 header-sidebar">' . $typRow->title . '</h3>
	<div class="home-content">
		' . $content[0] . ' ' . $readmore . '
	</div>';

}

$jVars['module:article_by_type'] = $restyp;



/*
    Why Choose Us
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';

// pr($resinnh1);
    $recInn1 = Article::find_by_id(2);
    if (!empty($recInn1)) {
            $resinnh1 .= $recInn1->content;

        
    }

}

$jVars['module:home_article'] = $resinnh1;


/*
    HomePage Facilities
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';


    $recInn1 = Article::find_by_id(3);

    if (!empty($recInn1)) {

            $resinnh1 .= $recInn1->content;

        
    }

}

$jVars['module:home_facilities'] = $resinnh1;

?>