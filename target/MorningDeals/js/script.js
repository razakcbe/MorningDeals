(function($) {

  $.fn.menumaker = function(options) {
      
      var nav_menu = $(this), settings = $.extend({
        title: "Menu",
        format: "dropdown",
        sticky: false
      }, options);

      return this.each(function() {
        nav_menu.prepend('<div id="menu-button">' + settings.title + '</div>');
        $(this).find("#menu-button").on('click', function(){
          $(this).toggleClass('menu-opened');
          var mainmenu = $(this).next('ul');
          if (mainmenu.hasClass('open')) { 
            mainmenu.hide().removeClass('open');
          }
          else {
            mainmenu.show().addClass('open');
            if (settings.format === "dropdown") {
              mainmenu.find('ul').show();
            }
          }
        });

        nav_menu.find('li ul').parent().addClass('has-sub');

        multiTg = function() {
          nav_menu.find(".has-sub").prepend('<span class="submenu-button"></span>');
          nav_menu.find('.submenu-button').on('click', function() {
            $(this).toggleClass('submenu-opened');
            if ($(this).siblings('ul').hasClass('open')) {
              $(this).siblings('ul').removeClass('open').hide();
            }
            else {
              $(this).siblings('ul').addClass('open').show();
            }
          });
        };

        if (settings.format === 'multitoggle') multiTg();
        else nav_menu.addClass('dropdown');

        if (settings.sticky === true) nav_menu.css('position', 'fixed');

        resizeFix = function() {
          if ($( window ).width() > 768) {
            nav_menu.find('ul').show();
          }

          if ($(window).width() <= 768) {
            nav_menu.find('ul').hide().removeClass('open');
          }
        };
        resizeFix();
        return $(window).on('resize', resizeFix);

      });
  };
})(jQuery);

(function($){
$(document).ready(function(){

$("#nav_menu").menumaker({
   title: "Menu",
   format: "multitoggle"
});

});
})(jQuery);
