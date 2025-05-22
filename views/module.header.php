<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);
$header = ob_start();
$tellinked = '';
    $telno = explode(",", $siteRegulars->contact_info);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank">' . $lastElement . '</a>';
    foreach ($telno as $tel) {
        
        $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank">' . $tel . '</a>';
        if(end($telno)!= $tel){
        $tellinked .= '';
        }   
}
?>
    <!-- header info begin -->
    <div id="header-info">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <ul class="header-contact">
                        <li class="icon_location">
                            <a href="<?= $siteRegulars->contact_info2 ?>" target="_blank"><?= $siteRegulars->fiscal_address ?></a>
                        </li>
                        <li class="icon_phone"><a href="tel:<?= $siteRegulars->contact_info ?>"><?= $siteRegulars->contact_info ?></a></li>
                        <li class="icon_email"><a href="mailto:<?= $siteRegulars->email_address ?>"><?= $siteRegulars->email_address ?></a></li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <div class="h_box">
                        <div class="social-icons-header">
                            <?= $jVars['module:socilaLinktop'] ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header info close -->

    <!-- header begin -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span id="menu-btn"></span>

                    <!-- logo begin -->
                    <div id="logo">
                        <div class="inner">
                            <a href="<?= BASE_URL ?>home"><img src="<?= IMAGE_PATH ?>preference/<?= $siteRegulars->logo_upload ?>" alt="logo"></a>
                        </div>
                    </div>
                    <!-- logo close -->

                    <!-- mainmenu begin -->
                    <nav>
                        <?= $jVars['module:res-menu'] ?>
                    </nav>
                    <!-- mainmenu close -->
                </div>
            </div>
            <!-- Removed one div cause design broke -->
    </header>
    <!-- header close -->
<?php
$header = ob_get_clean();

$header = '
    <header class="header">
        <nav class="top_header mt-3 mt-lg-0">
            <div class="top_menu py-1 clearfix d-none d-lg-block">
                <div class="container d-flex justify-content-lg-between align-content-center">
                    <ul class="top_menu_list">
                        <li>
                            <i class="far fa-building"></i> '. $siteRegulars->fiscal_address .'
                        </li>
                        <li>
                            <i class="fas fa-phone-alt"></i> '. $tellinked .'
                        </li>
                        <li>
                            <i class="far fa-envelope"></i> 
                            <a href="mailto:'. $siteRegulars->email_address .'">'. $siteRegulars->email_address .'</a>
                        </li>
                    </ul>
                    <!-- /.top_menu_list -->

                    <ul class="social_top align-self-center">
                        '. $jVars['module:socilaLinkbtm'] .'
                    </ul>
                    <!-- /.social_top -->
                </div>
                <!-- /.container -->
            </div>
            <!-- /.top_menu clearfix -->

            <div class="container">
                <div class="row mx-0 nav_white">
                    <div class="col-lg-3 col-6  d-flex align-content-center">
                        '. $jVars['site:logo'] .'
                    </div>
                    <!-- /.col-lg-4 -->

                    <div class="btn_col col-lg-9 align-content-center justify-content-end d-none d-lg-flex">
                        '. $jVars['module:res-menu'] .'
                        <a href="https://wa.me/+977'. $siteRegulars->whatsapp_a .'" class="head_btn align-self-center" target="_blank" rel="noopener">Join us</a>
                    </div>
                    <!-- /.col-lg-8 -->

                    <div class="col-6 align-content-center align-self-center justify-content-end d-flex  d-lg-none">
                        <a class="mobile_menu_btn" data-bs-toggle="offcanvas" href="#mobilemenu" role="button" aria-controls="mobilemenu">
                            <i class="fa fa-bars"></i>
                        </a>

                        <!--  offcanvas mobile menu -->
                        <div class="mobile_menu_container offcanvas offcanvas-start" tabindex="-1" data-bs-scroll="true" id="mobilemenu">
                            <div class="offcanvas-header">
                                <button class="close_mb" data-bs-dismiss="offcanvas" aria-label="Close"><i class="ph-x"></i></button>
                            </div>
                            <div class="offcanvas-body">
                                <a href="'.BASE_URL.'" class="logo_mobile"><img src="'. IMAGE_PATH . 'preference/'. $siteRegulars->logo_upload .'" alt="image"></a>

                                '. $jVars['module:res-menu1'] .'
                                 <!-- mobile_menu -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </nav>
        <!-- /.top-header -->

        <div class="cloned mt-2 mt-lg-3">
            <div class="container cloned_nav"></div>
        </div>
    </header>
';
$jVars['module:header'] = $header;