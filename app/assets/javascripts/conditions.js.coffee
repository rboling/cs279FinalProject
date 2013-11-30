# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $('[name="commit"]').val("Add")
  $("#span-pro").click ->
  	if ($("#the-pro-form").css("display") == "block")
      $("#the-pro-form").css("display","none")
      $(this).text("Add a reason in favor of hemodialysis") 
      $("#span-con").css("display", "inline")
  	else
      $("#the-pro-form").css("display","block")
      $(this).text("Cancel")
      $("#span-con").css("display", "none")
      #$('[name="commit"]').val("Add")
  $("#span-con").click ->
  	if ($("#the-con-form").css("display") == "block")
      $("#the-con-form").css("display","none") 
      $(this).text("Add a reason in favor of peritoneal dialysis")
      $("#span-pro").css("display", "inline")
  	else
      $("#the-con-form").css("display","block")
      $(this).text("Cancel")
      $("#span-pro").css("display", "none")
      #$('[name="commit"]').val("Add")
  #$("#preamble-button").click ->
    #$("#preamble").css("display", "none")
    #$("#the-body").css("display", "block")

jQuery ->
  $('#slider').slider({
    min: 0,
    max: 100,
    value: 50
    slide: (event, ui) ->
      $("#belief").val(ui.value)
  })
  $('#slider-two').slider({
    min: 0,
    max: 100,
    value: 50
    slide: (event, ui) ->
      $("#leaning-belief").val(ui.value)
  })
  $('#slider-three').slider({
    min: 0,
    max: 100,
    value: 50
    slide: (event, ui) ->
      $("#belief-two").val(ui.value)
  })
  $('#slider-four').slider({
    min: 0,
    max: 100,
    value: 50
    slide: (event, ui) ->
      $("#leaning-belief-two").val(ui.value)
  })
  $("#pro-ideas").mouseover ->
    $('html,body').css( 'cursor', 'pointer' )
  $("#pro-ideas").mouseout ->
    $('html,body').css( 'cursor', 'auto' )
  $("#your-pro-ideas").mouseover ->
    $('html,body').css( 'cursor', 'pointer' )
  $("#your-pro-ideas").mouseout ->
    $('html,body').css( 'cursor', 'auto' )
  $("#con-ideas").mouseover ->
    $('html,body').css( 'cursor', 'pointer' )
  $("#con-ideas").mouseout ->
    $('html,body').css( 'cursor', 'auto' )
  $("#your-con-ideas").mouseover ->
    $('html,body').css( 'cursor', 'pointer' )
  $("#your-con-ideas").mouseout ->
    $('html,body').css( 'cursor', 'auto' )

