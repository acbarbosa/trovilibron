calatrava.pageView ?= {}

calatrava.pageView.book = ->
  $page = $('#book')

  get: (field) ->
    $page.find("#" + field).val()

  render: (message) ->
    $page.empty().html ich.bookTemplate
      title: message.title
      author: message.author
      
    console.log("render ... ", message)

  bind: (event, handler) ->
    console.log("bind ... ", event)

  show: ->
    console.log("show ... ")
    $page.show()

  hide: ->
    console.log('hide ... ')
    $page.hide()