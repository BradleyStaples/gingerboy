class GingerBoy
  "use strict"

  constructor: () ->
    @initFancyBox()
    @animateSocialIcons()
    mq = window.matchMedia "(min-width: 52em)"
    mq.addListener @checkContactMessageSize
    @checkContactMessageSize(mq)

  initFancyBox: () ->
    $(".project-thumbnail-link").fancybox()

  animateSocialIcons: () ->
    $link = $('.social-text-link')
    icon = '.social-icon'
    hoverClass = 'hover'
    $link.on 'mouseenter', (event) ->
      $(event.target).siblings(icon).addClass hoverClass
    $link.on 'mouseleave', (event) ->
      $(event.target).siblings(icon).removeClass hoverClass

  checkContactMessageSize: (mq) ->
    if mq.matches then rows = 12 else rows = 5
    $textarea = $ '#message_body'
    $textarea.attr('rows', rows);

$ ->
  gingerboy = new GingerBoy
