trovilibron ?= {}
trovilibron.booksList ?= {}

trovilibron.booksList.start = ->
  # Registering page
  trovilibron.booksList.view = calatrava.bridge.pages.pageNamed "booksList"
  trovilibron.booksList.controller = trovilibron.booksList.createController trovilibron.booksList.view