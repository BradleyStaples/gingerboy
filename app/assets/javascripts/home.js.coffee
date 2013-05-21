class GingerBoy
  "use strict"

  constructor: () ->
    @initFancyBox()
    @animateSocialIcons()

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

$ ->
  gingerboy = new GingerBoy
