trovilibron ?= {}
trovilibron.book ?= {}

trovilibron.book.start = ->
  trovilibron.book.controller = trovilibron.book.createController calatrava.bridge.pages.pageNamed "book"