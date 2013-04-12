calatrava.pageView ?= {}

calatrava.pageView.bookSearchForm = ->
  $page = $('#bookSearchForm')

  get: (field) ->
    console.log("get ... ", field)
    $page.find("#" + field).val()

  render: (message) ->    
    console.log("render ... ", message)

  bind: (event, handler) ->
    console.log("bind ... ", event)
    switch event
      when 'keySearchInput' then $('#book_search', $page).off('change').on('change', handler)
      when 'search' then $('#search', $page).off('click').on('click', handler)
      else console.log('Unknown binding element')

  show: ->
    console.log("show ... ")
    $page.show()

  hide: ->
    console.log('hide ... ')
    $page.hide()
