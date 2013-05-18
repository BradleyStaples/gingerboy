class GingerBoy.Base
  "use strict"

  constructor: () ->
    @init()

  init: () ->
    @body = $ 'body'
    @hiddenClass = 'hidden'
    @projectTooltip = $ '.project-tooltip'
    @projectTooltipContents = '.project-tooltip-contents'
    @body.on 'click', @projectTooltip, (event) => @openProjecTooltip event
    @fadeOutFlashNotice()

  openProjecTooltip: (event) ->
    @closeProjectTooltip(true)
    @currentProjectTooltip = $ event.target
    @currentProjectTooltip.find(@projectTooltipContents).removeClass @hiddenClass
    @body.one 'click', () => @openProjecTooltip

  closeProjectTooltip: (closeAll) ->
    if closeAll
      $(@projectTooltipContents).addClass @hiddenClass
    else
      @currentProjectTooltip.find(@projectTooltipContents).addClass @hiddenClass
    @currentProjectTooltip = null

  fadeOutFlashNotice: () ->
    setTimeout ()->
      $('.flash-info').addClass('fade-out');
    , 3000

$ ->
  "use strict"
  GingerBoy.base = new GingerBoy.Base
