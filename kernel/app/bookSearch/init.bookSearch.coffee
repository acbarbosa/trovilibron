trovilibron ?= {}
trovilibron.bookSearch ?= {}

trovilibron.bookSearch.start = ->
  trovilibron.bookSearch.controller = trovilibron.bookSearch.createController calatrava.bridge.pages.pageNamed "bookSearchForm"