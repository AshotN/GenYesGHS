$(document).ready ->

	$(".moreclose").on "click", ->
		$(".sidemenu").animate({width:'toggle'}, 100);
		
	$(".more").on "click", ->
		console.log "MORE"
		$(".sidemenu").animate({width:'toggle'}, 100);

				
						