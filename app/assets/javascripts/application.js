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
	
	
  $('.technique-list span').click(function(){
    $(this).parents(".technique-list").find(".table-responsive").slideToggle();
		$(this).html("<i class='fa fa-chevron-down' aria-hidden='true'></i>");
  });
});
