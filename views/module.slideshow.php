<?php
/* First Slideshow */
$reslide='';

$Records = Slideshow::getSlideshow_by_mode(1);

// var_dump($Records); die();
if($Records) {
    $reslide.='';
    $reslidedata = '';
        foreach($Records as $RecRow) {
//             if(!empty($RecRow->source)){
//                 $reslide.='
                
//                 <div class="video-fullscreen-wrap">
//    <iframe src="'.$RecRow->source.'?rel=0&autoplay=1&loop=1&mute=1&controls=0&playlist=vZjqrPshuJ4" title="By Ace Hotel" frameborder="0" allowfullscreen></iframe>
//         </div>


//         <div class="v-middle caption overlay">
//             <div class="container">
//                 <div class="row">
//                      <div class="col-md-10 offset-md-1"> 

//                     </div> 
//                 </div>
//             </div>
//         </div>
//     </div>
                
//                    ';
//             }
            $file_path = SITE_ROOT.'images/slideshow/'.$RecRow->image;
            if(file_exists($file_path) and !empty($RecRow->image)) {
                $reslidedata.='
                    <div class="swiper-slide">
                        <div class="slide_inner" data-swiper-parallax-x="90%">
                            <div class="mask"></div>
                            <img src="'. IMAGE_PATH .'slideshow/'. $RecRow->image .'" alt="'. $RecRow->title .'" class="slide_bg">
                            <div class="slide_content container">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <h1>'. $RecRow->title .'</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>       
                ';

            }
        }
    $reslide.='
        <section class="home-slider clearfix">
            <div class="para_slider rdn_slider" data-scroll>
                <div class="swiper-wrapper">
                    '. $reslidedata .'
                </div>
                <div class="swiper-nav-btn">
                    <i class="prev_swiper fas fa-chevron-left"></i>
                    <i class="next_swiper fas fa-chevron-right"></i>
                </div>
            </div>
        </section> 
    ';
}

$jVars['module:slideshow']= $reslide;
?>