/**
 * 
 */
$(document).ready(function() {
		$('.banner a').hover(function(){
			$(this).find('img').animate({
				width: 230,
				height: 219,
				top: -12,
				left: -12
			},'fast');
		},function(){
			$(this).find('img').animate({
				width: 205,
				hegiht: 195,
				top: 0,
				left: 0
			}, 'fast');
		});
	});