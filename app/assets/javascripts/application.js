// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(function() {
  $('.event_box_hover').hover(
    function(){
      $(this).find('.description').fadeIn(150);
      $(this).find('.description-text').fadeIn(500);
      $(this).find('.event_image').css('transform','scale(1.05)').css('transition-duration','0.3s');
      $(this).css('border-bottom','2px solid black');
    },
    function(){
      $(this).find('.description').fadeOut();
      $(this).find('.description-text').fadeOut(500);
      $(this).find('.event_image').css('transform','scale(1.0)');
      $(this).css('border-bottom','1px solid #DDDDDD');
    }
    );
});

$(function() {
  $('.participate_plan_hover').hover(
    function(){
      $(this).find('.mypage_description').fadeIn(150);
    },
    function(){
      $(this).find('.mypage_description').fadeOut();
    }
    );
});