# global $:false, _:false

GingerBoy = {}

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

$ ->
  "use strict"
  GingerBoy.base = new GingerBoy.Base
