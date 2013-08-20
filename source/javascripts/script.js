//= require jquery
//= require slider

$(document).ready(function() {
	imagePost();
	borderMenu();
});

var borderMenu = $(function() {
	// first li border on menu category display off
	$('.list_categories li').first().css('border', 'none');
});

var imagePost = $(function() {
	// absolute image in the post find height add margin top next element
	var content = $('h2, p, div')
	var image_height = $('.image_post').height();
	var next_element = content.find('.image_post').next();
	next_element.css('margin-top', image_height + 50);
});