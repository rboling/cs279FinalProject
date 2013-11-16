# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $("#span-pro").click ->
  	if ($("#the-pro-form").css("display") == "block")
  	  $("#the-pro-form").css("display","none")
  	  $(this).text("Add pro ideas") 
  	else
  	  $("#the-pro-form").css("display","block")
  	  $(this).text("Cancel")
  $("#span-con").click ->
  	if ($("#the-con-form").css("display") == "block")
  	  $("#the-con-form").css("display","none") 
  	  $(this).text("Add con ideas")
  	else
  	  $("#the-con-form").css("display","block")
  	  $(this).text("Cancel")
  