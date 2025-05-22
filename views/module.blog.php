<?php
$bl =  '';
$siteRegulars = Config::find_by_id(1);

function getImagePath($image,$path){
    $siteRegulars = Config::find_by_id(1);
    $imgSrc = '';
    if(!empty($siteRegulars->other_upload)){
        $defaultImg = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
    }
    if(!empty($image)){
        $file_path = SITE_ROOT . 'images/'. $path .'/' . $image;
        if(file_exists($file_path)){
            $imgSrc = IMAGE_PATH . ''. $path .'/' . $image;
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
    return $imgSrc;
}
if (defined('BLOG_PAGE')) {
    function getImage($image,$path,$defaultPath = ''){
        $imgSrc = '';
        $defaultImg = $defaultPath == '' ?  BASE_URL . 'template/web/img/events/event1.jpg' : $defaultPath;
        if(!empty($image)){
            $file_path = SITE_ROOT . 'images/'. $path .'/' . $image;
            if(file_exists($file_path)){
                $imgSrc = IMAGE_PATH . ''. $path .'/' . $image;
            }else{
                $imgSrc = $defaultImg;
            }
        }else{
            $imgSrc = $defaultImg;
        }
        return $imgSrc;
    }

    $record = Blog::get_allblog();
    $linkTarget='';
    $pagelink='';
    if (!empty($record)) {
        $blogItem = '';

        $sql = "SELECT * FROM tbl_blog WHERE status='1' ORDER BY blog_date DESC ";

		$page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"]))? $_REQUEST["pageno"] : 1;
		$limit = 9;
		$total = $db->num_rows($db->query($sql));
		$startpoint = ($page * $limit) - $limit; 
		$sql.=" LIMIT ".$startpoint.",".$limit;
		$query = $db->query($sql);
        if($total > 0){
            while($recRow=$db->fetch_object($query)){
                $blogItem .= '
                    <div class="col-lg-4  mb-30 col-md-12">
                        <div class="blog_listpost">
                            <div class="blog_img">
                                <a href="javascript:void(0);">
                                    <img src="'. getImage($recRow->image,'blog', !empty($recRow->image) ? IMAGE_PATH . 'blog/' . $recRow->image : BASE_URL . 'template/web/img/events/event1.jpg' ) .'" alt="'. $recRow->title .'">
                                </a>
                            </div>
                            <!-- blog_img -->
    
                            <div class="blog_desc">
                                <a class="title_link" href="'. BASE_URL .'blog/'. $recRow->slug .'">
                                    <h3>'. $recRow->title .'</h3>
                                </a>
                                <p>'. $recRow->brief .'</p>
    
                                <div class="blog_meta">
                                    <ul class="list-unstyled d-flex mb-0">
                                        <li class="d-flex align-items-center">
                                            <i class="ph-calendar-blank"></i> '. $recRow->blog_date .'
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="ph-book-open"></i>
                                            <a href="'. BASE_URL .'home">'. $recRow->author .'</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- blog_desc -->
                            <!-- /.blog_meta -->
                        </div>
                        <!-- /.blog_listpost -->
                    </div>
                ';
            }
            // pr($test,1);
        }
        $bl .= '
            <section id="hero" class="blog-top" style="background-image: url('. getImage($siteRegulars->offer_upload,'preference/offer', !empty($siteRegulars->other_upload) ? IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload : BASE_URL . 'template/web/img/events/event1.jpg' ) .');">
                <div class="container blog_inner">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3 text-center">
                            <h1 class="hero_title" data-cue="slideInUp" data-delay="400">
                                Our Blogs
                            </h1>
                        </div>
                        <!-- /.col-lg-6 offset-3 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
                <div class="mask mask_dark"></div>
            </section>

            <section class="content  bg-blob-white ">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row zindex-2 position-relative" data-cues="slideInUp">
                                '. $blogItem .'
                                <!-- col-lg-4 -->
                            </div>
                            <!-- /.row -->

                            <nav class="page_nav mb-100 mb-lg-0">
                               <!-- <ul class="page_nav_list list-unstyled">
                                    <li class="page_list_item disabled"><a class="nav_page_link" href="#"><i class="ph-arrow-left"></i></a></li>
                                    <li class="page_list_item active"><a class="nav_page_link" href="#">1</a></li>
                                    <li class="page_list_item"><a class="nav_page_link" href="#">2</a></li>
                                    <li class="page_list_item"><a class="nav_page_link" href="#">3</a></li>
                                    <li class="page_list_item"><a class="nav_page_link" href="#"><i class="ph-arrow-right"></i></a></li>
                                </ul> -->
                                '. get_front_pagination($total, $limit, $page,BASE_URL .'blog') .'
                            </nav>
                        </div>
                        <!-- col-lg-9 -->
                    </div>
                    <!-- row --> 
                </div>
                <!-- container -->
            </section>
        ';
    } else {
        redirect_to(BASE_URL);
    }
}
$jVars['module:bloglist'] = $bl;
$linkTarget='';
$homebloglist = '';
$homeblogs ='';
if (defined('HOME_PAGE')) {
    $homeblog = Blog:: get_latestblog_by(3);
    // $homeblogs = Blog:: get_latestblog_by(3);
    if (!empty($homeblog)) {
        
        foreach ($homeblog as $homebl) {
            
           if(!empty($homebl->linksrc)){
            // $pagelink = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
            $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL.$homebl->linksrc;
           }
           else{
                $linksrc=  BASE_URL. 'blog/' .$homebl->slug;
           }
           $imgSrc = '';
           if(!empty($homebl->image)){
                $file_path = SITE_ROOT . 'images/blog/' . $homebl->image;
                if(file_exists($file_path)){
                    $imgSrc = IMAGE_PATH . 'blog/' . $homebl->image;
                }
           }
           $homebloglist .='
                <div class="col-lg-4 align-self-center mb-30 col-md-12">
                    <div class="blog_listpost">
                        <div class="blog_img">
                            <a href="'.BASE_URL.'blog/'.$homebl->slug.'">
                                <img src="'. $imgSrc .'" alt="'. $homebl->title .'">
                            </a>
                        </div>
                        <!-- blog_img -->

                        <div class="blog_desc">
                            <a class="title_link" href="'.BASE_URL.'blog/'.$homebl->slug.'">
                                <h3>'. $homebl->title .'</h3>
                            </a>
                            <p>'. $homebl->brief .'</p>

                            <div class="blog_meta">
                                <ul class="list-unstyled d-flex mb-0">
                                    <li class="d-flex align-items-center">
                                        <i class="ph-calendar-blank"></i> '. $homebl->blog_date .'
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="ph-book-open"></i>
                                        <a href="'. BASE_URL .'home">'. $homebl->author .'</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- blog_desc -->
                        <!-- /.blog_meta -->
                    </div>
                    <!-- /.blog_listpost -->
                </div>
           ';
        }
        $homeblogs='
            <div class="row zindex-2 position-relative" data-cues="slideInUp">
                '. $homebloglist .'
            </div>
        ';
    }
}

$jVars['module:homebloglist'] = $homeblogs;

$blog_detail = $recent_posts = '';
if (defined("BLOG_PAGE") ) {
    $slug = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $Blogs = Blog::find_by_slug($slug);
    //pr($Blogs);
   

    if (!empty($slug)) {
        $blog_detail .= '
        <!--================ Breadcrumb ================-->
        <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="'. BASE_URL .'template/web/images/default.jpg">
            <div class="container wide">
                <h1 class="mad-page-title">Blogs</h1>
                <nav class="mad-breadcrumb-path">
                    <span><a href="' . BASE_URL . 'home" class="mad-link">Home</a></span> /
                    <span></span>
                </nav>
            </div>
        </div>
       
        
               ';
        
        $blog_detail .= '
        <div class="mad-content no-pd">
            <div class="container">
                <div class="row">
                <div class="mad-section col-md-8">
                    <div class="mad-entities mad-entities-reverse type-4">
                            <div class="news-details__img">
                                <img src="' . IMAGE_PATH . 'blog/' . $Blogs->image . '" alt="' . $Blogs->title . '">
                                <div class="news-details__date">
                                    <p>' . date('d M Y', strtotime($Blogs->blog_date)) . '</p>
                                </div>
                            </div>
                            <div class="news-details__content">
                                <p class="news-details__author">by ' . $Blogs->author . '</p>
                                ' . $Blogs->content . '

                                </div>
                            <br/>
                            <div class="news-details__pagenation-box">
	                        
                            </div>
                            
                        </div>
                    </div>
                    

   ';
                                

        $recents = Blog::get_latestblog_by(3);
        if (!empty($recents)) {
            $blog_detail .='<div class="mad-section col-md-4">
                        <div class="sidebar">
                            <div class="sidebar__single sidebar__post">
                                <h3 >Latest posts</h3>
                                <ul >';
            foreach ($recents as $recent) {
                if ($recent->title != $Blogs->title) {
                    $blog_detail .= '
                    
                                    
                                    <li>
                                        <div class="sidebar__post-image">
                                            <img src="' . IMAGE_PATH . 'blog/' . $recent->image . '" alt="' . $recent->title . '">
                                        </div>
                                        <div class="sidebar__post-content">
                                            <P><i
                                                class="fas fa-calendar"></i>' . date("d M Y", strtotime($homebl->blog_date)) . '<P>
                                            <h5>
                                                
                                                <a href="' . BASE_URL . 'blog/' . $recent->slug . '">' . $recent->title . '</a>
                                            </h5>
                                        </div>
                                    </li>
                                
                    
                 ';
                }
                
            }
            $blog_detail .= '
            
            </ul>
                            </div>
                        </div>
                    </div>
                    
            </div>
        </div>
        </div>
    </div>
    </div>';       
        }
    } else {
        $blog_detail .= '
        <!--================ Breadcrumb ================-->
        <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="'. BASE_URL .'template/web/images/default.jpg">
            <div class="container wide">
                <h1 class="mad-page-title">About Us</h1>
                <nav class="mad-breadcrumb-path">
                    <span><a href="' . BASE_URL . 'home" class="mad-link">Home</a></span> /
                    <span>Blogs</span>
                </nav>
            </div>
        </div>
        
        <div class="mad-title-wrap align-center">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="mad-pre-title">Make memories happen</div>
                            <h2 class="mad-page-title">Club Himalaya Experience</h2>
                        </div>
                    </div>
                </div>
                
                
                <div class="mad-section no-pt mad-section-pb-mobile mad-section--stretched-content-no-px mad__colorizer--scheme-color-2">
                <div class="mad-entities mad-owl-center mad-pricing type-3 with-img-border mad-grid owl__carousel mad-owl__moving mad-grid--cols-2 nav-size-2 no-dots d-flex flex-wrap">
                  
                ';
        $Blogs = Blog::get_allblog();
        //pr($Blogs);
         foreach ($Blogs as $homebl) {
            
           if(!empty($homebl->linksrc)){
            // $pagelink = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
            $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL.$homebl->linksrc;
           }
           else{
                $linksrc= BASE_URL. 'blog/'. $homebl->slug;
           }
           $blog_detail .='
           <div class="mad__grid-item">
                            <!--================ Entity ================-->
                            <article class="mad-entity col-12">
                                <div class="mad-entity-media mad-owl-center-img">
                                    <a href="'.$linksrc.'" '.$linkTarget.'>
                                        <img src="' . IMAGE_PATH . 'blog/' . $homebl->image . '" alt="' . $homebl->title . '" />
                                    </a>
                                </div>
                                <div class="mad-entity__content mad-owl-center-element">
                                    <div class="mad-entity-inner">
                                        <h4 class="mad__entity-title">' . $homebl->title . '</h4>
                                        <h4 class="mad__entity-title">' . date("d M Y", strtotime($homebl->blog_date)) . '</h4>
                                        <p>
                                            A Rare Blend Of Nature And Modern Amenities and has become synonymous with Nagarkot.
                                        </p>
                                        <div class="mad-entity-footer">
                                            <a href="'.$linksrc.'" '.$linkTarget.' class="btn btn-big">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--================ End of Entity ================-->
                </div>

           ';
    }
    $blog_detail .='
    </div>
    
                </div>
            ';
    
    }
}

if(defined('BLOG_DETAIL_PAGE')){
    $blogDetailMain = $blogBread = '';
    if(isset($_REQUEST['slug'])){
        $blogDetails = Blog::find_by_slug($_REQUEST['slug']);
        $news = Blog::get_relatedblog($blogDetails->id,8);
        $otherBlgs = '';

        foreach($news as $others){
            $noticeList = '';
            $linkType = $others->linktype == 0 ? '' : 'target="_blank" rel="noopener"';
            $linkSrc = !empty($others->linksrc) && $others->linksrc != '#' ?  $others->linksrc : "javascript:void(0);";
            // if(empty($others->file)){
                $noticeList = '
                    <a href="'. BASE_URL .'blog/'.$others->slug.'" >'. $others->title .'</a>
                ';
            // }else{
            //     $noticeList = '
            //         <a href="'. IMAGE_PATH .'notice/'. $others->file .'" target="_blank" rel="noopener">'. $others->title .'</a>
            //     ';
            // }
            $otherBlgs .= '
                <li>
                    <a class="vblog_img" href="#"><img src="'. getImagePath($others->image,'blog') .'" alt="'. $others->title .'"></a>
                    <div class="vblog_list">
                        '. $noticeList .'
                        <span><i class="ph-calendar-blank"></i> '. $others->blog_date .'
                        </span>
                    </div>
                </li>
            ';
        }
        
        $blogBread = '
            <section id="hero" class="blog-top single-blog-top" style=" background-image: url(\''. getImagePath($blogDetails->b_image,'blog/blogdetail') .'\');">
                <div class="container blog_inner">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3 text-center">
                            <h1 class="hero_title" data-cue="slideInUp" data-delay="400">
                                '. $blogDetails->title .'
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
        $blogDetailMain = '
            <section class="content  bg-blob-white ">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 single_blog">
                            <img class="single_blog_img" src="'. getImagePath($blogDetails->image,'blog') .'" alt="'. $blogDetails->title .'">

                            <div class="single_blog_meta">
                                <ul class="list-unstyled d-md-flex mb-0">
                                    <li class="d-flex align-items-center">
                                        <i class="ph-calendar-blank"></i> '. $blogDetails->blog_date .'
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="ph-user-circle"></i> '. $blogDetails->author .'
                                    </li>
                                </ul>
                            </div>
                            <!-- single_blog_meta -->

                            <div class="blog_content">
                                '. $blogDetails->content .'
                            </div>
                            <!-- blog_content -->
                        </div>

                        <!-- col-lg-9 -->
                        <div class="col-lg-3 ">
                        <div class="sidebar">
                                <div class="widget mb-30">
                                    <h3 class="widget_title">Related News</h3>
                                    <ul class="vblog">
                                        '. $otherBlgs .'
                                    </ul>
                                </div>
                                <!-- widget --> 
                            </div>
                            <!-- sidebar -->
                        </div>
                        <!-- col-lg-3 -->
                    </div>
                    <!-- row -->  
                </div>
                <!-- container -->
            </section>
        ';
    }
    $jVars['module:blog-detail-bread'] = $blogBread;
    $jVars['module:blog-detail-main'] = $blogDetailMain;
}


$jVars['module:blog-detail'] = $blog_detail;
$jVars['module:blog-recent-posts'] = $recent_posts;


?>