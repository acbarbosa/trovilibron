trovilibron ?= {}
trovilibron.booksList ?= {}

trovilibron.booksList.start = ->
  # Registering page
  calatrava.bridge.pages.pageNamed "booksList"