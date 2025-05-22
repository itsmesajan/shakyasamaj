<?php
$reslgall = '';

$gallRec = Gallery::getParentgallery(2);
if (!empty($gallRec)) {
    foreach ($gallRec as $gallRow) {
        $childRec = GalleryImage::getGalleryImages($gallRow->id);
        if (!empty($childRec)) {
            $reslgall .= '';
            foreach ($childRec as $key => $childRow) {
                $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
                if (file_exists($file_path) and !empty($childRow->image)) {
                    $reslgall .= '
                        <div class="gallery_inner">
                            <a href="'. IMAGE_PATH .'gallery/galleryimages/'. $childRow->image .'" data-gallery="gallery" data-width="90%" data-title="'. $childRow->title .'"
                                data-description="'. $childRow->content .'">';
                                if($key < 6){
                                    $reslgall .= '
                                    <img src="'. IMAGE_PATH .'gallery/galleryimages/'. $childRow->image .'" class="gallery_popup" alt="gallery" />';
                                }
                                $reslgall .= '
                            </a>
                        </div>
                    ';
                }
            }
            $reslgall .= '';
        }
    }
}

$res_gallery = '
    <div class="rdn_gallery">
        '. $reslgall .'
    </div>
';

$jVars['module:galleryHome'] = $res_gallery;



$dininggallery = '';
$galldining = GalleryImage::getImagelist_by(19, 3);
if (!empty($galldining)) {
    $dininggallery .= '<div class="row about">
                     <div class="demo-gallery">
    		     <div id="lightgallery" class="list-unstyled">';
    foreach ($galldining as $row) {
        $dininggallery .= '<div class="item col-sm-4 col-xs-12" data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-sub-html="<h4>' . $row->title . '</h4>">
                        <a href="">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '"/>
                        </a>
                    </div>';
    }
    $dininggallery .= '</div>
    </div>
    </div>';
}
$jVars['module:dining-gallery'] = $dininggallery;

$gallerybread='';
$siteRegulars = Config::find_by_id(1);
$imglink= $siteRegulars->gallery_upload ;
if(!empty($imglink)){
    $img= IMAGE_PATH . 'preference/gallery/' . $siteRegulars->gallery_upload ;
}else if(!empty($siteRegulars->other_upload)){
    $img = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
}
else{
    $img='';
}

$gallerybread='
    <section id="hero" class="about-top" style="background-image: url('. $img .');">
        <div class="container about_inner">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 text-center">
                    <h1 class="hero_title" data-cue="slideInUp" data-delay="400">
                        Gallery
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

$jVars['module:gallery-bread'] = $gallerybread;

/**
 *      Main Gallery
 */
$thegal = $gallerylistbread = $thegalnav= '';
$gallRectit = Gallery::getParentgallery();
if ($gallRectit) {
    $thegal .= '';
    $thegalnav .= '<li><a class="is_active" href="#!" data-filter="*">All</a></li>';
    foreach ($gallRectit as $row) {
        $thegalnav .= '
        <li><a href="#!" data-filter=".'. $row->slug .'">'. $row->title .'</a></li>';
    }
    $thegal .= '';

    // $thegal .= '
    //     <div id="gallery" class="gallery full-gallery de-gallery gallery-3-cols">
    // ';
    foreach ($gallRectit as $row) {
        $gallRec = GalleryImage::getGalleryImages($row->id);
        foreach ($gallRec as $row1) {
            // pr($row1);

            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
            if (file_exists($file_path) and !empty($row1->image)):
                $thegal .= ' 
                    <div class="col-lg-4 gallery_inner align-self-center mb-30 event_outer col-md-6 '. $row->slug .'">
                    <a href="'. IMAGE_PATH .'gallery/galleryimages/'. $row1->image .'" data-gallery="bgallery" data-title="'. $row->title .'" data-width="90%">
                        <img src="'. IMAGE_PATH .'gallery/galleryimages/'. $row1->image .'" class="gallery_popup" alt="gallery" />
                    </a>
                </div>
                   
                ';
            endif;
        }
    }
    $thegal .= '';

}

$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-nav'] = $thegalnav;
