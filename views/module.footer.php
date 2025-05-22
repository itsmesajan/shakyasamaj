<?php
$siteRegulars = Config::find_by_id(1);
$lastElement='';
$phonelinked='';
$whatsapp='';
$tellinked = '';
    $telno = explode("/", $siteRegulars->contact_info);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank">' . $lastElement . '</a>/';
    foreach ($telno as $tel) {
        
        $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank">' . $tel . '</a>';
        if(end($telno)!= $tel){
        $tellinked .= '/';
        }   
}
$phoneno = explode("/", $siteRegulars->whatsapp);
$lastElement = array_shift($phoneno);
$phonelinked .= '<a href="tel:+977-' . $lastElement . '" target="_blank">' . $lastElement. '</a>/';
foreach ($phoneno as $phone) {
    
    $phonelinked .= '<a href="tel:+977-' . $phone . '" target="_blank">' . $phone . '</a>';
    if(end($phoneno)!= $phone){
    $phonelinked .= '/';
    }   
}
$footer = '
    <section class="dark-bg footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 mb-30 mb-lg-0">
                    <h3>'. $siteRegulars->sitename .'</h3>
                    <p>'. strip_tags($siteRegulars->breif) .'</p>
                    <ul class="footer_address">
                        <li><i class="fa fa-home"></i>'. $siteRegulars->fiscal_address .'</li>
                        <li><i class="fa fa-envelope"></i> <a href="mailto:'. $siteRegulars->email_address .'">'. $siteRegulars->email_address .'</a></li>
                    </ul>
                </div>
                <!-- /.col-lg-3 -->
                <div class="col-lg-3 footer_column mb-30 mb-lg-0">
                    '. $jVars['module:upcoming-events'] .'
                </div>
                <!-- /.col-lg-3 -->
                <div class="col-lg-3 footer_column mb-30 mb-lg-0">
                    '. $jVars['module:quick-links'] .'
                </div>
                <!-- /.col-lg-3 -->
                <div class="col-lg-3 footer_column mb-lg-0">
                    <h3>Gallery</h3>
                    '. $jVars['module:galleryHome'] .'
                </div>
                <!-- /.col-lg-3 -->
            </div>
            <!-- /.row -->
            <div class="divider_footer"></div>
            '. $jVars['site:copyright'] .'
        </div>
        <!-- /.container -->
    </section>
';
           

$jVars['module:footer'] = $footer;

if(!empty($siteRegulars->whatsapp_a)){
$whatsapp='
<div class="messenger">
<a href="'.$siteRegulars->whatsapp_a.'" target="_blank"><img src="'.BASE_URL.'template/web/images/whatsapp.png"></a>
</div>';
}
else{
    $whatsapp='';
}

$jVars['module:footer-whatsapp'] = $whatsapp;
