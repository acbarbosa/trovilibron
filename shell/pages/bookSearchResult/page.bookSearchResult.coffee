calatrava.pageView ?= {}

calatrava.pageView.bookSearchResult = ->
  $page = $('#bookSearchResult')

  get: (field) ->
    console.log("get ... ", field)
    $page.find("#" + field).val()

  render: (message) ->    
    console.log("render ... ", message)

  bind: (event, handler) ->
    console.log("bind ... ", event)

  show: ->
    console.log("show result ... ")
    $page.show()

  hide: ->
    console.log('hide result ... ')
    $page.hide()