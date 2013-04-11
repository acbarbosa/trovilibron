trovilibron ?= {}
trovilibron.bookSearchResult ?= {}

trovilibron.bookSearchResult.start = ->
  # Registering page
  calatrava.bridge.pages.pageNamed "bookSearchResult"