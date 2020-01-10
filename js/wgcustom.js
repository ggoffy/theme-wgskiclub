/*!
 * Custom js for wedega theme - https://xoops.wedega.com
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

// When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    $('#navbar-items').addClass('navbar-items-shrink');
    $('#search_form').addClass('navbar-items-shrink');
    $('#logo').addClass('nav-logo-shrink');
    $('#navbar').addClass('navbar-shrink');
  } else {
    $('#navbar-items').removeClass('navbar-items-shrink');
    $('#search_form').removeClass('navbar-items-shrink');
    $('#logo').removeClass('nav-logo-shrink');
    $('#navbar').removeClass('navbar-shrink');
  }
} 
 
$(document).ready(function(){
    // scroll after changing page
    var mysearch = location.search;
    if (mysearch.indexOf("scroll=") > 0) {
        myhash = mysearch.replace('?scroll=', '#');
        setTimeout(function() {
            $('html, body').animate({
                scrollTop: $(myhash).offset().top - 120
                }, 1000)
        }, 0);
        window.history.pushState('', '/', window.location.pathname)
    }

    
    // Select all links with hashes
    $('a[href*="#"]')
    // Remove links that don't actually link to anything
    .not('[href="#"]')
    .not('[href="#0"]')
    .click(function(event) {
        // On-page links
        if (
        location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
        && 
        location.hostname == this.hostname
        ) {
            // Figure out element to scroll to
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            // Does a scroll target exist?
            if (target.length) {
                // Only prevent default if animation is actually gonna happen
                event.preventDefault();
                $('html, body').animate({
                scrollTop: target.offset().top -120
                }, 1000, function() {
                    // Callback after animation
                    // Must change focus!
                    var $target = $(target);
                    $target.focus();
                    if ($target.is(":focus")) { // Checking if the target was focused
                        return false;
                    } else {
                        $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
                        $target.focus(); // Set focus again
                    };
                });
            }
        }
    });
  
    // Populate images from data attributes.
    var scrolled = $(window).scrollTop()
    $('.parallax').each(function(index) {
      var imageSrc = $(this).data('image-src')
      var imageHeight = $(this).data('height')
      if ($(window).width() > 1200) {
        imageSrc = imageSrc.replace('header-home.jpg', 'header-home-big.jpg');
        imageSrc = imageSrc.replace('parallax1.jpg', 'parallax1-big.jpg');
        imageSrc = imageSrc.replace('parallax2.jpg', 'parallax2-big.jpg');
        imageSrc = imageSrc.replace('parallax3.jpg', 'parallax3-big.jpg');
        imageSrc = imageSrc.replace('parallax4.jpg', 'parallax4-big.jpg');
      }
      if ($(window).width() < 500) {
        imageSrc = imageSrc.replace('header-home.jpg', 'header-home-small.jpg');
        imageSrc = imageSrc.replace('parallax1.jpg', 'parallax1-small.jpg');
        imageSrc = imageSrc.replace('parallax2.jpg', 'parallax2-small.jpg');
        imageSrc = imageSrc.replace('parallax3.jpg', 'parallax3-small.jpg');
        imageSrc = imageSrc.replace('parallax4.jpg', 'parallax4-small.jpg');
      }
      $(this).css('background-image','url(' + imageSrc + ')')
      $(this).css('height', imageHeight)

      // Adjust the background position.
      var initY = $(this).offset().top
      var height = $(this).height()
      var diff = scrolled - initY
      var ratio = Math.round((diff / height) * 100)
      $(this).css('background-position','center ' + parseInt(-(ratio * 1.5)) + 'px')
    })

  // Attach scroll event to window. Calculate the scroll ratio of each element
  // and change the image position with that ratio.
  // https://codepen.io/lemagus/pen/RWxEYz
  $(window).scroll(function() {
    var scrolled = $(window).scrollTop()
    $('.parallax').each(function(index, element) {
      var initY = $(this).offset().top
      var height = $(this).height()
      var endY  = initY + $(this).height()

      // Check if the element is in the viewport.
      var visible = isInViewport(this)
      if(visible) {
        var diff = scrolled - initY
        var ratio = Math.round((diff / height) * 300)
        $(this).css('background-position','center ' + parseInt(-(ratio * 1.5)) + 'px')
      }
    })
  })
})

// Check if the element is in the viewport.
// http://www.hnldesign.nl/work/code/check-if-element-is-visible/
function isInViewport(node) {
  // Am I visible? Height and Width are not explicitly necessary in visibility
  // detection, the bottom, right, top and left are the essential checks. If an
  // image is 0x0, it is technically not visible, so it should not be marked as
  // such. That is why either width or height have to be > 0.
  var rect = node.getBoundingClientRect()
  return (
    (rect.height > 0 || rect.width > 0) &&
    rect.bottom >= 0 &&
    rect.right >= 0 &&
    rect.top <= (window.innerHeight || document.documentElement.clientHeight) &&
    rect.left <= (window.innerWidth || document.documentElement.clientWidth)
  )
}
