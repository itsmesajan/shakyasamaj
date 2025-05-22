<?php
$siteRegulars = Config::find_by_id(1);

if(defined('TEAMS_PAGE')){
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
    $teamDetails = Teams::getDoctor();
    
    $teamBread = $teamItem = '';

    foreach($teamDetails as $teamDetail){
        $subTeamDetails = SubTeams:: getDoctor_limit($teamDetail->id);

        foreach($subTeamDetails as $subTeamDetail){
            $imgSrc = getImage($subTeamDetail->image2,'subteams/image',BASE_URL . 'template/web/img/events/event1.jpg');

            $teamItem .= '
                <div class="col-lg-3 col-md-6 mb-30 mb-lg-0">
                    <div class="team_box">
                        <img src="'. $imgSrc .'" alt="image">
                    </div>
                    <div class="team_desc">
                        <h3 class="mb-0">'. $subTeamDetail->title .'</h3>
                        <p class="mb-0">'. $subTeamDetail->nmc .'</p>
                    </div>
                </div>
            ';
        }
    }
    $teamBread = '
        <section id="hero" class="blog-top" style="background-image: url('. getImage($siteRegulars->facility_upload,'preference/facility', !empty($siteRegulars->other_upload) ? IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload : BASE_URL . 'template/web/img/events/event1.jpg' ) .');">
            <div class="container blog_inner">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 text-center">
                        <h1 class="hero_title" data-cue="slideInUp" data-delay="400">
                            Our Team Members
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
    $mainContent = '
        <section id="team" class="team gray-bg content">
            <div class="container">
                <div class="row" data-cues="slideInUp">
                    '. $teamItem .'
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>
    ';
    
    $jVars['module:teams-bread'] = $teamBread;
    $jVars['module:teams-main'] = $mainContent;
}
?>