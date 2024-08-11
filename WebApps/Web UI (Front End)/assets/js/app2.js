$(document).ready(function(){
   $('.food-slidertop').slick({
      autoplay:true,
     slidesToShow:3,
     slidesToScroll:1,
     prevArrow:".prev-btn2",
     nextArrow:".next-btn2",
     responsive:[
        {
           breakpoint:992,
           settings:{
            slidesToShow:2,
           }
        },
        {
         breakpoint:768,
         settings:{
          slidesToShow:1,
         }
      }
     ]

   });

   // $('.nav-trigger').click(function(){
   //    $('.site-content-wrapper').toggleClass('scaled');
   // })
});