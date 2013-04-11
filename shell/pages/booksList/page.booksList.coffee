calatrava.pageView ?= {}

calatrava.pageView.booksList = ->
  $page = $('#booksList')

  get: (field) ->
    $page.find("#" + field).val()

  render: (message) ->    
    console.log("render ... ", message)

  bind: (event, handler) ->
    console.log("bind ... ", event)

  show: ->
    $page.show()

  hide: ->
    $page.hide()