class GingerBoy.Base
  "use strict"

  constructor: () ->
    @init()

  init: () ->
    @fadeOutFlashNotice()
    @initPopovers()
    @initFancyBox()
    @animateSocialIcons()

  initPopovers: () ->
    @popoverLinks = $('.project-tooltip')
    popoverOptions =
      html: true
      placement: @popoverPlacement()
      trigger: 'click'

    @popoverLinks.popover(popoverOptions)
    @popoverLinks.click (event) => @handlePopover(event)
    $('body').on 'click', '.btn-popover', (event) ->
      $('.btn-popover').parents('.popover').siblings('.project-tooltip').popover('hide')

  handlePopover : (event) ->
    event.preventDefault()
    target = event.target
    @popoverLinks.not(target).popover('hide')
    $('.popover-title').append('<button class="btn btn-mini btn-popover float-right">&times;</button>')

  initFancyBox: () ->
    $(".fancybox").fancybox()

  fadeOutFlashNotice: () ->
    setTimeout ()->
      $('.flash-info').addClass 'fade-out'
    , 3000

  popoverPlacement: () ->
    mq = window.matchMedia("(min-width: 27.75em)")
    if mq.matches then 'right' else 'top'

  animateSocialIcons: () ->
    $('.social-text-link').on 'mouseenter', (event) ->
      $(event.target).siblings('.social-icon').addClass 'hover'
    $('.social-text-link').on 'mouseleave', (event) ->
      $(event.target).siblings('.social-icon').removeClass 'hover'

$ ->
  "use strict"
  GingerBoy.base = new GingerBoy.Base
