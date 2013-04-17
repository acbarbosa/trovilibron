calatrava.pageView ?= {}

calatrava.pageView.booksList = ->
  $page = $('#booksList')

  get: (field) ->
    $page.find("#" + field).val()

  render: (message) ->    
    $('#query').empty().html message.query
    $('#list').empty().html ich.bookItem
      books: message.books

  bind: (event, handler) ->
    console.log("bind ... ", event)
    switch event
      when 'book' then $('.book').off('click').on('click', handler)
      else console.log('Unknown binding element')

  show: ->
    $page.show()

  hide: ->
    $page.hide()