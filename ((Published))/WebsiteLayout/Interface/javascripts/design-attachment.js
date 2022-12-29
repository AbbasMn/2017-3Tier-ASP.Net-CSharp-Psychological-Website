
$(window).resize(function(){
	$('.lastblah').css({
		width : $(window).width() + 'px',
		height : $(window).height() + 'px'
	});

	// var ww = $(window).width();
	// if(ww < 640) {
	// 	$('.NowruzTourBanner').css({
	// 		'position' : 'absolute',
	// 	});
	// } else {
	// 	$('.NowruzTourBanner').css({
	// 		'position' : 'fixed',
	// 	});
	// }

	if($.browser.iphone || $.browser.android) {
		$('.cornerAds').css({
			'display' : 'none',
		});
	}

});

$(window).load(function(){

	// var blahblahbluhuuh = $('.sidebarAds').offset().top;

	// $(window).scroll(function(){
	// 	if(blahblahbluhuuh - $(window).scrollTop() < 50) {
	// 		$('.sidebarAds').addClass('fixed');
	// 	} else if(blahblahbluhuuh) {
	// 		$('.sidebarAds').removeClass('fixed');
	// 	}
	// });

});
$(document).ready(function(){

	$(function() {
		$( ".answ" ).sortable();
		$( ".answ" ).disableSelection();
	});

	// $(".sidebarAds").mCustomScrollbar({
	// 	autoHideScrollbar:true,
	// 	theme:"dark-thin",
	// });

	var bannImgW,
		bannImgH;

	if($('.lastblah .whiteSpace img').length > 0) {
			bannImgW = $('.lastblah .whiteSpace img').width(),
			bannImgH = $('.lastblah .whiteSpace img').height();
	} else {
			bannImgW = '300',
			bannImgH = '100';
	}

	$(window).resize(function(){
		$('.lastblah .whiteSpace').width(bannImgW);
		$('.lastblah .whiteSpace').height(bannImgH);
		$('.lastblah .whiteSpace').css({
			'marginLeft': '-' + bannImgW/2 + 'px',
			'marginTop': '-' + bannImgH/2 + 'px'
		});
	});

	$(window).resize();

	function blup(){

		// $('.pop').click(function(){
			$('.lastblah').fadeIn(500);
		// });

		$('.lastblah, a.shutIt').click(function(){
			$('.lastblah').fadeOut(100);
		});
		$('.lastblah .whiteSpace').click(function(e){
			e.stopPropagation();
		});
	}

	if(($.browser.ipad || $.browser.iphone || $.browser.android) && $('.lastblah').hasClass('mobileShow')) {
		blup();
	}
	if(($.browser.ipad || $.browser.iphone || $.browser.android) && !$('.lastblah').hasClass('mobileShow')) {
		//return false;
	} else {
		blup();
	}


		$('.cornerAds .close').click(function(){
			$('.cornerAds').css('display','none');
		});

		//tooltips

        $('.tooltip a').each(function(){
                $(this).append('<div class="tooltipInfo">' + $(this).parent().attr('title') + '</div>');
        });

        $('.tooltip a').mouseover(function(){
                $(this).contents('.tooltipInfo').css('display','block');
        });
        $('.tooltip a').mouseout(function(){
                $(this).contents('.tooltipInfo').css('display','none');
        });

        //disabled features

        $('.disabledFeature').each(function(){
        	// $(this).after('<div class="disabledFeatureCover"></div>');
        	// $(this).next('.disabledFeatureCover').attr('title','این قابلیت به زودی راه اندازی می شود').css({
        	$(this).before('<div class="disabledFeatureCover"></div>');
        	$(this).prev('.disabledFeatureCover').attr('title','این قابلیت به زودی راه اندازی می شود').css({
        		display: 'block',
        		width: $(this).width() + 2 + 'px',
        		height: $(this).height() + 2 + 'px',
        		'margin': $(this).css('margin'),
        		'margin-top': $(this).css('margin-top'),
        		'margin-bottom': $(this).css('margin-bottom'),
        		'margin-left': $(this).css('margin-left'),
        		'margin-right': $(this).css('margin-right'),
        		'padding': $(this).css('padding'),
        		'padding-top': $(this).css('padding-top'),
        		'padding-bottom': $(this).css('padding-bottom'),
        		'padding-left': $(this).css('padding-left'),
        		'padding-right': $(this).css('padding-right'),
        		position: 'absolute',
        		"z-index": '999',
        	});
        });

        //readonly inputs

        $('input.amount-value-right, input.amount-value-left').attr('readonly','true');

        //colorbox

        $(".group4").colorbox({rel:'group4', slideshow:true});
        $('.galleryThumbSelector').colorbox({title: function(){
			var url = $(this).attr('link');
			return '<a class="cbdllnk" href="' + url + '" target="_blank">Download This Image</a>';
		}, rel:'galleryImagesGroup'});

        //stuff I'm not sure what they're!

        $(".overview-counter-item-bottom").hover(function(){
        	$(this).find('span.count').fadeOut(function(){
        		$(this).parent().find('span.add').fadeIn('fast');
        	});
        },function(){
        	$(this).find('span.add').fadeOut(function(){
        		$(this).parent().find('span.count').fadeIn('fast');
        	});
        });

        //read more

		var jabsckjghcszbnxc = $(".detail-box-content-more-toggle").text();
		$(".detail-box-content-more-toggle").click(function(){
			$(this).toggleClass('blah');
			if($(this).hasClass('blah')) {

				$(".detail-box-content-more").css('display','inline');
				$('.detail-box-content-summary').css('display','none');

				$(this).text('بستن اطلاعات بیشتر')

			} else {

				$(".detail-box-content-more").css('display','none');
				$('.detail-box-content-summary').css('display','inline');

				$(this).text(jabsckjghcszbnxc);

			}
		});

		//tab stuff

		$(".tab_content").not('.shittyones').hide();
		$(".shittyones").show();
		$(".tab_content:first").show(); 

		$(".contenttab .liBud2").click(function() {
		  $(".contenttab .liBud2").removeClass("tabactive");
		  $(this).addClass("tabactive");
		  $(".tab_content").hide();
		  var activeTab = $(this).attr("rel"); 
		  $("#"+activeTab).fadeIn();
		});

		$(".sidebartab_content").hide();
		$(".sidebartab_content:first").show(); 

		$("ul.sidebartab li").click(function() {
		  $("ul.sidebartab li").removeClass("sidebartabactive");
		  $(this).addClass("sidebartabactive");
		  $(".sidebartab_content").hide();
		  var activeTab = $(this).attr("rel"); 
		  $("#"+activeTab).fadeIn();
		});

		//toggle search

		$('.search-toggle').click(function(){
			$('.saarch-field').animate({width:'toggle'},{queue:false,duration:200})	
		});

		//newsletter toggle

		$(".newsletter-toggle").click(function(){
			$(".newsletter-more").slideToggle();	
		});

		//gallery I guess!

		// $(function() {
		// 	$div = null;
		// 	$('#thumbs ul').children().each(function(i) {
		// 		$(this).appendTo( $div );
		// 		$(this).addClass( 'itm'+i );
		// 		$(this).click(function() {
		// 			$('#images').trigger( 'slideTo', [i, 0, true] );
		// 		});
		// 	});
		// 	$('#thumbs ul li.itm0').addClass( 'selected' );
		// });

		$('#thumbs li').click(function(){
			// $(this).addClass('selected');
			// $('#thumbs li').not(this).removeClass('selected');

			$(this).addClass('selected');
			$('#thumbs li').not(this).removeClass('selected');

			$('.video-slideshow-holder img').not('.video-slideshow-holder img[rel="' + $(this).attr('pffff') + '"]').removeClass('active');
			$('.video-slideshow-holder img[rel="' + $(this).attr('pffff') + '"]').addClass('active');
		});

		//popup

		$(function() {
			$('#my_modal').popup();
		});

		//video option box

		$('.video-option-box').each(function(){
			$(this).css({
				'height' : $(this).contents('a').length * 20 + 'px',
				'margin-top' : '-' + $(this).contents('a').length * 20 + 'px',
			});
		});

		$('.video-option-link').hover(function(){
			$(this).contents('.video-option-box').css('display','block');
		}, function(){
			$('.video-option-box').css('display','none');
		});

		//cycles

		$('.sidebar-gallery ul').cycle({
			fx: 'fade',
			timeout: 5000,
			speed: 500,
			pause: 1,
			next: '.gallery-button a.next',
			prev: '.gallery-button a.prev',
			pager: '.gallery-pagination',
		});

		$('.price-list-table-list-cyclist').cycle({
			fx: 'scrollVert',
			timeout: 8000,
			speed: 500,
			pause: 1,
			next: '.price-list-table-bottom a.price-list-table-next',
			prev: '.price-list-table-bottom a.price-list-table-prev',
		});

		$('.overview-other-image').cycle({
			fx: 'scrollHorz',
			timeout: 0,
			speed: 500,
			next: 'a.overview-other-image-next',
			prev: 'a.overview-other-image-prev',
		});

		$('.brand-slideshow-cyclist').cycle({
			fx: 'scrollHorz',
			timeout: 0,
			speed: 500,
			next: '.brand-button a.next',
			prev: '.brand-button a.prev',
		});

		$('.winner-box-content.winnerCycleBox').cycle({
			fx: 'scrollHorz',
			timeout: 0,
			speed: 500,
			next: '.winner-box-title .arrow a.arrow-next',
			prev: '.winner-box-title .arrow a.arrow-prev',
		});

		function blabla(){
			if($('#acceptTerms').is(':checked')) {
				$('input.submitReview').css('display','block');
			} else {
				$('input.submitReview').css('display','none');
			}
		}

		blabla();

		$('body').click(function(){
			blabla();
		});

		$('.reviewSubmissionLoading').css('height', $(window).height());


});