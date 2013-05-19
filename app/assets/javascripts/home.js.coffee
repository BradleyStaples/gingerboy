class GingerBoy.Base
  "use strict"

  constructor: () ->
    @init()

  init: () ->
    @fadeOutFlashNotice()
    @initPopovers()

  initPopovers: () ->
    @popoverLinks = $('.project-tooltip')
    popoverOptions =
      html: true
      placement: 'right'
      trigger: 'click'
    @popoverLinks.popover(popoverOptions)
    @popoverLinks.click (event) => @handlePopover(event)
    $('body').on 'click', '.btn-popover', (event) ->
      $('.btn-popover').parents('.popover').siblings('.project-tooltip').popover('hide')

  handlePopover : (event) ->
    target = event.target
    @popoverLinks.not(target).popover('hide')
    $('.popover-title').append('<button class="btn btn-mini btn-popover float-right">&times;</button>')

  fadeOutFlashNotice: () ->
    setTimeout ()->
      $('.flash-info').addClass 'fade-out'
    , 3000

$ ->
  "use strict"
  GingerBoy.base = new GingerBoy.Base
