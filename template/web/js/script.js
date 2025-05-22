(function () {
    "use strict";

    /* script scrollcue  */
    scrollCue.init();



    /* Cloned Navigation element */
    const navwhite = document.querySelector(".nav_white");
    if (navwhite) {
        const navElement = navwhite.cloneNode(true);
        document.querySelector(".cloned_nav").appendChild(navElement);

    }



    /* navigation script */
    if (document.querySelector(".header")) {
        const nav_menu = document.querySelector(".header").querySelectorAll(".has_child");

        for (var i = 0; i < nav_menu.length; i++) {
            nav_menu[i].addEventListener('mouseenter', function () {
                this.classList.add('active');
            });
            nav_menu[i].addEventListener('mouseleave', function () {
                this.classList.remove('active');
            });
        }
    }



    /* mobile menu script */

    if (document.querySelector(".mobile_menu")) {
        //adding icon for dropdown button in mobile menu
        const linkwithchild = document.querySelector(".mobile_menu").querySelectorAll(".mdropdown");

        for (let index = 0; index < linkwithchild.length; index++) {
            const newContent = '<i class="mbtn_drop fa fa-angle-down"></i>';
            linkwithchild[index].insertAdjacentHTML('beforeend', newContent);

        }

        //add class for clicked icon
        const mb_menu = document.querySelector(".mobile_menu").querySelectorAll(".mdropdown > i");

        for (var imb = 0; imb < mb_menu.length; imb++) {
            mb_menu[imb].addEventListener('click', function (e) {
                //toogle class active for the icon button
                this.parentNode.classList.toggle('active');
                //dropdown slide effect with 200ms transition
                slideToggle(this.parentNode.querySelector('.mdropdown_child'), 200);
                e.preventDefault()
            });
        }
    }



    /* parallax slider script on Home 1*/
    const para_slider = new Swiper('.para_slider', {
        speed: 800,
        loop: true,
        parallax: true,
        simulateTouch: false,
        preventInteractionOnTransition: true,
        // autoplay:false,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false
        },

        // If we need pagination
        navigation: {
            nextEl: '.para_slider .next_swiper',
            prevEl: '.para_slider .prev_swiper',
        },

    });



    /* testimonial slider script on Home 1 & Home 5*/
    const testi_slider = new Swiper('.testi_slider', {
        speed: 800,
        loop: true,
        preventInteractionOnTransition: true,
        // autoplay:false,
        autoplay: {
            delay: 6000,
            disableOnInteraction: false
        },
        effect: 'fade',
        fadeEffect: {
            crossFade: true
        },


        // If we need pagination
        navigation: {
            nextEl: '.prev_testi',
            prevEl: '.next_testi',
        },

    });

    /* testimonial 2 slider script on Home 3  */
    const testi2_slider = new Swiper('.testi2_slider', {
        speed: 800,
        loop: true,
        slidesPerView: 1,
        centeredSlides: true,
        autoplay: {
            delay: 6000,
            disableOnInteraction: false
        },
        breakpoints: {
            640: {
                slidesPerView: 1,
            },
            1024: {
                slidesPerView: 3,
            }
        },

    });


    /* Event main slider script on Single Events page  */
    const events_main_slider = new Swiper('.events_main_slider', {
        speed: 800,
        loop: false,
        spaceBetween: 30,
        slidesPerView: 1,
        centeredSlides: true,
        autoplay: {
            delay: 6000,
            disableOnInteraction: false
        },

    });




    /* client slider script in Home 1 & Home 3 */
    const client_slider = new Swiper(".client_slider", {
        slidesPerView: 2,
        loop: true,
        autoplay: {
            delay: 7000,
            disableOnInteraction: false
        },
        breakpoints: {
            640: {
                slidesPerView: 3,
            },
            768: {
                slidesPerView: 4,
            },
            1024: {
                slidesPerView: 5,
            },
            1279: {
                slidesPerView: 6,
            },
        },
    });

    /* client slider script in home 5 (about client slider)*/
    const abt_client_slider = new Swiper(".abt_client_slider", {
        slidesPerView: 2,
        loop: true,
        autoplay: {
            delay: 7000,
            disableOnInteraction: false
        },
        breakpoints: {
            640: {
                slidesPerView: 3,
            },
            1024: {
                slidesPerView: 4,
            },
            1279: {
                slidesPerView: 5,
            },
        },
        // If we need pagination
        navigation: {
            nextEl: '.abt_client .next_swiper',
            prevEl: '.abt_client .prev_swiper',
        },
    });


    /* text slider script on Home 2 (hero section)*/
    const text_slide = new Swiper(".text_slide", {
        speed: 800,
        loop: true,
        simulateTouch: false,
        preventInteractionOnTransition: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false
        },
        effect: 'fade',
        fadeEffect: {
            crossFade: true
        },
    });

    /* event slider script on Home 2 */
    const event_slide = new Swiper(".event_slide", {
        speed: 1000,
        loop: true,
        slidesPerView: 1,
        spaceBetween: 30,
        simulateTouch: false,
        preventInteractionOnTransition: true,
        autoplay: {
            delay: 8000,
            disableOnInteraction: false
        },
        effect: 'coverflow',
        coverflowEffect: {
            rotate: 30,
            slideShadows: false,
        },
        breakpoints: {
            640: {
                slidesPerView: 2,
            },
            1279: {
                slidesPerView: 3,
            },
        },
        // If we need pagination
        navigation: {
            nextEl: '.mt_events .next_swiper',
            prevEl: '.mt_events .prev_swiper',
        },
    });

    /* event slider script in home 3 */
    const event_slidebox = new Swiper(".eventslide_box", {
        speed: 400,
        loop: true,
        slidesPerView: 1,
        spaceBetween: 30,
        autoplay: {
            delay: 6000,
            disableOnInteraction: false
        },
        breakpoints: {
            1024: {
                slidesPerView: 3,
            },
            780: {
                slidesPerView: 2,
            },
            1279: {
                slidesPerView: 4,
            },
        }
    });

    /* event slider script in home 5 */
    const event_slide_five = new Swiper(".event_slide_five", {
        speed: 400,
        loop: true,
        slidesPerView: 1,
        spaceBetween: 0,
        autoplay: {
            delay: 8000,
            disableOnInteraction: false
        },
        breakpoints: {
            1024: {
                slidesPerView: 3,
            },
            780: {
                slidesPerView: 2,
            },
            1279: {
                slidesPerView: 4,
            },
        }
    });


    /* isotope script */
    //variable
    const elem = document.querySelector('.event_box');
    const filtersElem = document.querySelector('.event_filter');

    //only run isotope if elem exist
    if (elem) {

        //isotope layout script
        const rdn_events_list = new Isotope(elem, {

            // options
            itemSelector: '.event_outer',
            layoutMode: 'masonry'
        });

         //only run isotope filtersElem exist
        if ( filtersElem) {
            // isotope filtering script
            filtersElem.addEventListener('click', function (event) {
                if (!matchesSelector(event.target, 'a')) {
                    return;
                }
                const filterValue = event.target.getAttribute('data-filter');

                // use the data-filter attribute
                rdn_events_list.arrange({
                    filter: filterValue
                });
                //adding is_active class for filter button
                filtersElem.querySelector('.is_active').classList.remove('is_active');
                event.target.classList.add('is_active');
                event.preventDefault();
            });
        }
    }





    /* scroll to top script */
    const scrollToTopBtn = document.querySelector(".scrollToTopBtn");

    if (scrollToTopBtn) {
        scrollToTopBtn.addEventListener("click", scrollToTop);
    }

    function scrollToTop() {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    }

    //scroll to top appear
    // When the user scrolls down 200px from the top of the document, show the button
    function scrollFunction() {
        if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
            scrollToTopBtn.style.opacity = "1";
        } else {
            scrollToTopBtn.style.opacity = "0";
        }
    }


    /* Cloned menu appear */
    // When the user scrolls down 400px from the top of the document, show the cloned menu
    const clonedMenu = document.querySelector(".cloned");

    function scrollCloned() {

        if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
            clonedMenu.classList.add('fixed_menu');
        } else {
            clonedMenu.classList.remove('fixed_menu')
        }
    }

    //scrolling effect
    window.onscroll = function () {
        //show the to top button
        if (scrollToTopBtn) {
            scrollFunction();
        }
        //clone the menu
        if (clonedMenu) {
            scrollCloned();
        }
    };


    /* gallery  popup script */
    const lightbox = GLightbox({
        touchNavigation: true,
        loop: true,
        autoplayVideos: true,
        selector: '*[data-gallery]',
        zoomable: false,
        height: 'auto'
    });

    /* video  popup script */
    const popupVideo = GLightbox({
        touchNavigation: true,
        loop: true,
        autoplayVideos: true,
        selector: '.popup_video',
        zoomable: false,
        height: 'auto',
        draggable: false,
        skin: 'body_popupvideo'
    });

    /* counter init with waypoint */
    /* trigger waypoints on the element with class .stat_section */
    const counterSection = document.querySelector('.stat_section');
    if (counterSection) {
        const counter = new Waypoint({
            element: counterSection,
            handler: function (direction) {
                /* variable:class,duration time= default 5 (seconds) */
                rdn_counter(".counter_text", 15);
            },
            offset: '75%',
        })

    }

    /* change value for progress bar to style width*/
    if (document.querySelector('.progress_box')) {
        const progressBar = document.querySelector('.progress_box').querySelectorAll('.progress-bar');

        for (i = 0; i < progressBar.length; i++) {
            /*  width based on aria-valuenow */
            const barWidth = progressBar[i].getAttribute('aria-valuenow');
            progressBar[i].style.width = barWidth + "%";
        }
    }


    /* tilting effect script  */
    VanillaTilt.init(document.querySelector(".rdn_tilt"), {
        max: 15,
        speed: 600,
        easing: "cubic-bezier(.03,.98,.52,.99)", // Easing on enter/exit.
        glare: false,
    });


    /* typing text effect script on home 4
    The value/words is based on data-words inside the typing-words class*/
    const typing = document.querySelector('.typing-one');
    if (typing) {
        const typingWords = document.querySelector('.typing-words').getAttribute('data-words');
        const Wordlist = typingWords.split('|');
        //settings for typewriter
        const typewriter = new Typewriter(typing, {
            loop: true,
            delay: 75,
        });
        //insert the words value into loop and start the typewriter
        for (let index = 0; index < Wordlist.length; index++) {
            const words = Wordlist[index];
            typewriter.typeString(words)
                .pauseFor(2500)
                .deleteAll()
        }
        typewriter.start();
    }

})();