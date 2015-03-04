$(document).ready ->
		ScaleSlider = ->
				bodyWidth = document.body.clientWidth
				if bodyWidth
						jssor_slider1.$ScaleWidth Math.min(bodyWidth, 1920)
				else
						window.setTimeout ScaleSlider, 30
				return
		if navigator.userAgent.indexOf("MSIE") isnt -1 or navigator.appVersion.indexOf("Trident/") > 0
				$(".iewarning").css "display", "block"
				$(".iewarning").show()
				console.log "IE Detected"
		console.log "NON IE...goodjob"
		_CaptionTransitions = [
				$Duration: 600
				$Delay: 100
				$Cols: 10
				$Formation: $JssorSlideshowFormations$.$FormationStraight
				$Opacity: 2
		]
		options =
				$FillMode: 2
				$AutoPlay: true
				$AutoPlayInterval: 4000
				$PauseOnHover: 1
				$ArrowKeyNavigation: true
				$SlideEasing: $JssorEasing$.$EaseOutQuint
				$SlideDuration: 800
				$MinDragOffsetToSlide: 20
				$SlideSpacing: 0
				$DisplayPieces: 1
				$ParkingPosition: 0
				$UISearchMode: 1
				$PlayOrientation: 1
				$DragOrientation: 1
				$CaptionSliderOptions:
						$Class: $JssorCaptionSlider$
						$CaptionTransitions: _CaptionTransitions
						$PlayInMode: 1
						$PlayOutMode: 3

				$BulletNavigatorOptions:
						$Class: $JssorBulletNavigator$
						$ChanceToShow: 2
						$AutoCenter: 1
						$Steps: 1
						$Lanes: 1
						$SpacingX: 8
						$SpacingY: 8
						$Orientation: 1
						$Scale: false

				$ArrowNavigatorOptions:
						$Class: $JssorArrowNavigator$
						$ChanceToShow: 2
						$AutoCenter: 2
						$Steps: 1

				$SlideshowOptions:
						$Class: $JssorSlideshowRunner$
						$Transitions: _CaptionTransitions
						$TransitionsOrder: 1
						$ShowLink: true

		jssor_slider1 = new $JssorSlider$("slider1_container", options)
		ScaleSlider()
		$(window).bind "load", ScaleSlider
		$(window).bind "resize", ScaleSlider
		$(window).bind "orientationchange", ScaleSlider
		return

