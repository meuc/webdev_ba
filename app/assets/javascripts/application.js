//= require jquery
//= require jquery_ujs
// turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .

$(function() {
  $('.disabled').click(function(e){
    e.preventDefault(e);
  });

  $('.belt-tile > a').click(function(){
    $(this).parents(".belt-tile").find(".category-wrap").slideToggle();
  });

  $('.category-wrap > li').click(function(){
    $(this).parents(".category-wrap").find(".technique-wrap").slideToggle();
  });
});
