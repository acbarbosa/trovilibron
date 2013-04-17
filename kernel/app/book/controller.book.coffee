trovilibron ?= {}
trovilibron.book ?= {}

trovilibron.book.createController = (bookView) ->

  renderView: (book) ->
    calatrava.bridge.changePage 'book'
    bookView.render book