trovilibron ?= {}
trovilibron.booksList ?= {}

trovilibron.booksList.createController = (listView) ->

  parseBookData = (data) ->
    title: $(data).find('book title').text()
    author: _.map( $(data).find('book authors author'), (author) ->
      $(author).find('name').text() )

  
  renderBook = (data) ->
    trovilibron.book.controller.renderView parseBookData data


  renderErrorMessage = ->
    console.log(error)


  bookReview = (event)->
    target = $(event.target)
    calatrava.bridge.request
      url: "http://localhost:8000/book/" + target.attr('id')
      method: "get"
      contentType: "xml"
      success: renderBook
      failure: renderErrorMessage


  renderView: (books) ->
    calatrava.bridge.changePage 'booksList'
    listView.render books
    listView.bind 'book', bookReview