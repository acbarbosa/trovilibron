trovilibron ?= {}
trovilibron.bookSearch ?= {}

trovilibron.bookSearch.createController = (searchView) ->

  parseSearchResult = (data) ->
    query = $(data).find('search query')
    booksResults = $(data).find('work')
    {
      query: query
      books: _.map booksResults, (item, index) ->
        best_book = $(item).find('best_book')
        {
          id: best_book.find('id').text()
          title:  best_book.find('title').text()
          author: {
            id: best_book.find('author id').text()
            name: best_book.find('author name').text()
          }
          class: if index % 2 == 0 then 'even' else 'odd'
        }
    }


  renderSearchResults = (data) ->
    trovilibron.booksList.controller.renderView parseSearchResult data

    
  renderErrorMessage = ->
    console.log(error)


  search = ->
    query = ''
    searchView.get 'book_search', (v) -> query = v
    calatrava.bridge.request
      url: "http://localhost:8000/books?q=" + query
      method: "get"
      contentType: "xml"
      success: renderSearchResults
      failure: renderErrorMessage

  searchView.bind 'search', search