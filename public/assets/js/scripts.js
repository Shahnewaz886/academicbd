
      $('.innermenu').hover(function(){
          jQuery(this).children().next().css("display", "block");
          jQuery(this).children().children().next().css("display", "block");
      });

      $('.innermenu').mouseleave(function(){
          jQuery(this).children().next().css("display", "none");
          jQuery(this).children().children().next().css("display", "none");
      });

        //Mobile nav
        jQuery(function(){
         // $('#menu').slicknav({
         //     label: ""
         // });
        });
        /*Home slider*/
        $('.sk-slider').slick({
            draggable: true,
            arrows: true,
            dots: true,
            // fade: true,
            speed: 900,
            autoplay: false,
            infinite: true,
        });


      $(".custom-select-box").each(function() {
          var classes = $(this).attr("class"),
              id      = $(this).attr("id"),
              name    = $(this).attr("name");
          var template =  '<div class="' + classes + '">';
          template += '<span class="custom-select-trigger">' + $(this).attr("placeholder") + '</span>';
          template += '<div class="custom-options">';
          $(this).find("option").each(function() {
              template += '<span class="custom-option ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>';
          });
          template += '</div></div>';

          $(this).wrap('<div class="custom-select-wrapper"></div>');
          $(this).hide();
          $(this).after(template);
      });
      $(".custom-option:first-of-type").hover(function() {
          $(this).parents(".custom-options").addClass("option-hover");
      }, function() {
          $(this).parents(".custom-options").removeClass("option-hover");
      });
      $(".custom-select-trigger").on("click", function() {
          $('html').one('click',function() {
              $(".custom-select-box").removeClass("opened");
          });
          $(this).parents(".custom-select-box").toggleClass("opened");
          event.stopPropagation();
      });
      $(".custom-option").on("click", function() {
          $(this).parents(".custom-select-wrapper").find("select").val($(this).data("value"));
          $(this).parents(".custom-options").find(".custom-option").removeClass("selection");
          $(this).addClass("selection");
          $(this).parents(".custom-select-box").removeClass("opened");
          $(this).parents(".custom-select-box").find(".custom-select-trigger").text($(this).text());
      });




