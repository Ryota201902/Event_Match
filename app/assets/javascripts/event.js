$(function(){
	$('#event_box_hover').hover(
		function(){
			$('#event_image').html('<%= @event.description %>');
	},
		function(){
			$('#event_image').html('<%= attachment_image_tag event, :event_image,:fill, 325, 210, format:'jpeg' %>')
		}
	);
});