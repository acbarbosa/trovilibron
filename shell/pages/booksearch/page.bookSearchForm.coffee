calatrava.pageView ?= {}

calatrava.pageView.bookSearchForm = ->
  $page = $('#bookSearchForm')

  get: (field) ->
    $page.find("#" + field).val()

  render: (message) ->
    console.log(message)

  bind: (event, handler) ->
    console.log(event)

  show: ->
    console.log($page)
    $page.show()
    console.log('show')

  hide: ->
    $page.hide()
    console.log('hide')
