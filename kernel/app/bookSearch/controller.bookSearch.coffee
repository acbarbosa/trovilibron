trovilibron ?= {}
trovilibron.bookSearch ?= {}

trovilibron.bookSearch.controller = (view)->
  searchKey = ''

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
    calatrava.bridge.request
      url: "http://localhost:8000/books?q=" + searchKey
      method: "get"
      contentType: "xml"
      success: renderSearchResults
      failure: renderErrorMessage

  view.bind 'keySearchInput', (event) ->
    searchKey = $(event.currentTarget).val()
    
  view.bind 'search', search