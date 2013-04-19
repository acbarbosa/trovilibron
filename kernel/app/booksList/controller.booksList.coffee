trovilibron ?= {}
trovilibron.booksList ?= {}

trovilibron.booksList.createController = (listView) ->

  parseBookData = (data) ->
    book = $( $(data).find 'GoodreadsResponse > book' ) 
    title: book.find('title').text()
    author: _.map( book.find('authors:nth-child(2n) author'), (author) ->
      $(author).find('name').text() )
    imageUrl: book.find('small_image_url:nth-child(1n)').text()
    description: book.find('description:nth-child(1n)').text()

  
  renderBook = (data) ->
    trovilibron.book.controller.renderView parseBookData data


  renderErrorMessage = ->
    console.log(error)


  bookReview = (event)->
    target = $(event.currentTarget)
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