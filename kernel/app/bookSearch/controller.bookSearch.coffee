trovilibron ?= {}
trovilibron.bookSearch ?= {}

trovilibron.bookSearch.controller = (view)->

  renderSearchResults = (data) ->
    booksResults = $(data).find('work')
    books = _.map booksResults, (item) ->
      {
        title: $(item).find('best_book title').text()
      }
    console.log(books)
    calatrava.bridge.changePage 'booksList'
    $('#list').empty().html ich.bookItem
      books: books
    

  renderErrorMessage = ->
    console.log(error)

  search = ->
    query = view.get 'book_search', (v) -> console.log(v)
    calatrava.bridge.request
      url: "http://localhost:8000/books?q=" + query
      method: "get"
      contentType: "xml"
      success: renderSearchResults
      failure: renderErrorMessage

  view.bind 'search', search