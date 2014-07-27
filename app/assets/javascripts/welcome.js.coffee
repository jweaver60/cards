# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Smooth page scrolling for top navigation
$(".scroll").click((event)->
  event.preventDefault()
  dest = 0
  if $(this.hash).offset().top > $(document).height()-$(window).height()
    dest = $(document).height()-$(window).height()
  else
    dest = $(this.hash).offset().top

  $('html,body').animate({scrollTop: dest}, 1000, 'swing')
  return
)
