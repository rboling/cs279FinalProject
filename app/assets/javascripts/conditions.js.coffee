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





    #$.ajax({ url: http://secret-retreat-5409.herokuapp.com/responses',
    #  type: 'POST',
    #  beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
    #  data: $.param({"response": {"time1": parseInt(timeArray[0]),"time2": parseInt(timeArray[1]),"time3": parseInt(timeArray[2]),"time4": parseInt(timeArray[3]),"time5": parseInt(timeArray[4]),"time6": parseInt(timeArray[5]), "time7": parseInt(timeArray[6]), "time8": parseInt(timeArray[7]), "time9": parseInt(timeArray[8]), "time10": parseInt(timeArray[9]), "q1": parseInt(question_array[0]),"q2": parseInt(question_array[1]),"q3": parseInt(question_array[2]),"q4": parseInt(question_array[3]),"q5": parseInt(question_array[4]),"q6": parseInt(question_array[5]),"q7": parseInt(question_array[6]),"q8": parseInt(question_array[7]),"q9": parseInt(question_array[8]),"q10": parseInt(question_array[9]),"q11": parseInt(question_array[10]),"q12": parseInt(question_array[11]), "q13": parseInt(question_array[12])}}),
    #  success: function() {
    #    alert("Everything has been sent!");
    #  }
    #});