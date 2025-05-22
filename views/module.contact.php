<?php
/*
* Contact form
*/
$rescont = $innerbred = '';
$img='';
if (defined('CONTACT_PAGE')) {
    $siteRegulars = Config::find_by_id(1);
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
$imglink= $siteRegulars->contact_upload ;
if(!empty($imglink)){
    $img= IMAGE_PATH . 'preference/contact/' . $siteRegulars->contact_upload ;
}
else{
    $img='';
}
        // pr($siteRegulars);
    $rescont .= '
        <section id="hero" class="contact-top" style="background-image: url(\''. $img .'\');">
            <div class="container contact_inner">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 text-center">
                        <h1 class="hero_title" data-cue="slideInUp" data-delay="400">
                            Contact Us
                        </h1>
                    </div>
                    <!-- /.col-lg-6 offset-3 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
            <div class="mask mask_dark"></div>
        </section>
        <!-- /#hero.contact-top -->

        <section class="pb-100  bg-blob-white contact-with-form">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 position-relative">
                        <div class="map_bottom">
                            <div class="google_map">
                                <iframe src="'. $siteRegulars->location_map .'" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </div>
                    <!-- col-lg-3 -->

                    <div class="col-lg-6">
                        <h3 class="mb-2">Get In Touch</h3>
                        <p>We\'re here to help 24/7/365, and will respond to your inquiry as soon as possible.</p>
                        <form action="#" class="contact-form" id="contactForm">
                            <input class="form-control" type="text" name="name" placeholder="Your name*">
                        
                            <input class="form-control" type="email" name="email" placeholder="Your email*">

                            <input class="form-control" type="tel" name="phone" placeholder="Your phone*">

                            <input class="form-control" type="text" name="address" placeholder="Your Address*">
                            
                            <textarea class="form-control" rows="4" placeholder="Your message..." name="message"></textarea>
                            
                            <div class="captcha mb-20" style="margin-top: 20px;margin-bottom: 20px;">
                                <div id="g-recaptcha-response" class="g-recaptcha" data-sitekey="6Lf1CysqAAAAAIgmN0_09HdspdNsgi6359cuvp4j"></div>
                            </div>
                        
                            <div class="button-area">
                            <button  class="btn rdn_btn"  type="submit" id="submitContact">Send Message</button>
                            <span class="contact_out_text alert alert-success" style="display:none;"></span>
                            </div>
                        </form>
                    </div>
                    <!-- col-lg-6 -->
                </div>
                <!-- row -->
            </div>
            <!-- container -->
        </section>
    ';
}

$jVars['module:contact-us'] = $rescont;

$joinToday = '
    <a href="https://wa.me/+977'. $siteRegulars->whatsapp_a .'" class="rdn_btn mt-3" target="_blank" rel="noopener">Join today</a>
';
$jVars['module:jointoday'] = $joinToday;