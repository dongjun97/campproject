/**
 * 
 */
var slideIndex3 = 1;
showDivs3(slideIndex3);

function plusDivs3(n) {
  showDivs3(slideIndex3 += n);
}

function currentDiv3(n) {
  showDivs3(slideIndex3 = n);
}

function showDivs3(n) {
  var i;
  var x = document.getElementsByClassName("mySlides3");
  var dots = document.getElementsByClassName("demo3");
  if (n > x.length) {slideIndex3 = 1}    
  if (n < 1) {slideIndex3 = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-border-red", "");
  }
  x[slideIndex3-1].style.display = "block";  
  dots[slideIndex3-1].className += " w3-border-red";
}