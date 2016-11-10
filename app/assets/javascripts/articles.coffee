# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener("turbolinks:load", function() {
	$flash_notice = document.getElementByClassName('flash');
	$flash_notice.innerHTML = "Hi There!";

	document.getElementByClassName('container').append("<p>I've appended this paragraph.</p>");

	if($flash_notice.innerHTML == ""){
		$flash_notice.style.display = "none";
	}
});