class GingerBoy.Randle
  "use strict"

  constructor: () ->
    @init()

  init: () ->
    @randomizeTitle()
    # $(".pills").pills()
    @body = $ "body"
    @body.on 'click', '.button-char', (event) => @handleButtonChar event
    @body.on 'click', ".button-random", (event) => @handleButtonRandom event
    @body.on 'click', '.button-pattern', (event) => @handleButtonPattern event

  randomizeTitle: () ->
    $(".random-title").lettering()
    $(".random-title > span[class^='char']").each () ->
      size = 60 + @randNum(0, 12)
      sizeVal = size + "px"
      color = 64 + @randNum(0, 64)
      colorVal = "rgb(#{color},#{color},220)"
      rotate = 0 + @randNum(0,20)
      rotateVal = "rotate(#{ropotate}deg)"
      caps = (@randBoolean()) ? "uppercase" : "lowercase"

      $(this).css
        "font-size": sizeVal
        "color": colorVal
        "-moz-transform": rotateVal
        "-webkit-transform": rotateVal
        "-o-transform": rotateVal
        "-ms-transform": rotateVal
        "text-transform": caps

  handleButtonChar: (event) ->
    id = $(event.target).attr('id')
    @addChar id

  handleButtonRandom: () ->
    # return 'data' from ajax php file
    if data.password is "Error: no characters enabled"
      $("#randomresult")
        .hide()
        .addClass("alert-message")
        .removeClass("success")
        .addClass("error")
        .html("<strong>#{data.password}</strong></p>")
        .show("fast")
    else
      $("#randomresult")
        .hide()
        .addClass("alert-message")
        .removeClass("error")
        .addClass("success")
        .html("Your password is <br /><strong>#{data.password}</strong></p>")
        .show("fast")

  handleButtonPattern: () ->
    $patternfield = $ "#patternfield"
    template = ""

    # if find() doesn't find a match, it seems the chaining stops
    # and later replacements aren't made. cheap fix is to not
    # chain with .end() and just do multiple statements

    $patternfield.find(".addLower").before("<strong>a</strong>").remove()
    $patternfield.find(".addUpper").before("<strong>A</strong>").remove()
    $patternfield.find(".addNumber").before("<strong>#</strong>").remove()
    $patternfield.find(".addSymbol").before("<strong>@</strong>").remove()
    $patternfield.find(".addRandom").before("<strong>*</strong>").remove()

    template = $patternfield.html()
    $(":input[name='template']").val(template)

    #fake return a data variable from ajax php
    if data.password is "Error: no characters enabled"
      $("#patternresult")
        .hide()
        .addClass("alert-message")
        .removeClass("success")
        .addClass("error")
        .html("<strong>#{data.password}</strong></p>")
        .show("fast")
    else
      $("#patternresult")
        .hide()
        .addClass("alert-message")
        .removeClass("error")
        .addClass("success")
        .html("Your password is <br /><strong>#{data.password}</strong></p>")
        .show("fast")

  randNum: (min,max) ->
    result = min
    range = max - min + 1
    diff = Math.floor( Math.random() * range )
    sign = @randBoolean() ? -1 : 1
    result += diff * sign

  randBoolean: () ->
    !! Math.round( Math.random() );

  addChar: (buttonClicked) ->
    $patternfield = $ "#patternfield"
    input = '<input type="text" readonly="readonly" class="patternchar ~~~" value="$$$" />'
    switch buttonClicked
      when "addLower"
        symbol = "a"
      when "addUpper"
        symbol = "A"
      when "addNumber"
        symbol = "#"
      when "addSymbol"
        symbol = "@"
      when "addRandom"
        symbol = "*"
      else
        symbol = ""
    input = input.replace "$$$", symbol
    if symbol isnt ""
      input = input.replace "~~~", buttonClicked
    $patternfield.html( $patternfield.html() + input ).focus()

  generateString: () ->
    data = $("#patternform").serialize() # or randomform
    min = 8;
    max = 8;
    template = "<strong>*</strong><strong>*</strong><strong>*</strong><strong>*</strong><strong>*</strong><strong>*</strong><strong>*</strong><strong>*</strong>"
    upperCaseOn = true
    lowerCaseOn = true
    numbersOn = true
    symbolsOn = true
    method = "random"
    vars = ["min", "max", "template", "upperCaseOn", "lowerCaseOn", "numbersOn", "symbolsOn", "method"]

$ ->
  "use strict"
  GingerBoy.randle = new GingerBoy.Randle
