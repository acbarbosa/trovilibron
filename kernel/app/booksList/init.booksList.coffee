trovilibron ?= {}
trovilibron.booksList ?= {}

trovilibron.booksList.start = ->
  # Registering page
  trovilibron.booksList.view = calatrava.bridge.pages.pageNamed "booksList"