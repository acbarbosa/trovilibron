calatrava.pageView ?= {}

calatrava.pageView.bookSearchForm = ->
  $page = $('#bookSearchForm')

  get: (field) ->
    $page.find("#" + field).val()

  render: (message) ->    
    console.log("render ... ", message)

  bind: (event, handler) ->
    switch event
      when 'keySearchInput' then $('#book_search', $page).off('change').on('change', handler)
      when 'search' then $('#search', $page).off('click').on('click', handler)
      else console.log('Unknown binding element')

  show: ->
    $page.show()

  hide: ->
    $page.hide()
