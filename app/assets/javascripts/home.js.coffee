class GingerBoy
  "use strict"

  constructor: () ->
    @initFancyBox()
    @animateSocialIcons()
    @initProjectReadMore()
    @initMediaQueryDetection()

  initFancyBox: () ->
    $(".project-thumbnail-link").fancybox()

  animateSocialIcons: () ->
    $link = $ '.social-text-link'
    icon = '.social-icon'
    hoverClass = 'hover'
    $link.on 'mouseenter', (event) ->
      $(event.target).siblings(icon).addClass hoverClass
    $link.on 'mouseleave', (event) ->
      $(event.target).siblings(icon).removeClass hoverClass

  initProjectReadMore: () ->
    $link = $ '.project-more'
    $container = '.project-container'
    $limitClass = 'limit-height'
    $link.on 'click', (event) ->
      event.preventDefault()
      $(event.target).parents($container).removeClass $limitClass

  initMediaQueryDetection: () ->
    mq = window.matchMedia "(min-width: 52em)"
    mq.addListener @checkContactMessageSize
    @checkContactMessageSize(mq)

  checkContactMessageSize: (mq) ->
    if mq.matches then rows = 12 else rows = 5
    $textarea = $ '#message_body'
    $textarea.attr('rows', rows);

$ ->
  window.gingerboy = new GingerBoy
