trovilibron ?= {}
trovilibron.bookSearch ?= {}

trovilibron.bookSearch.start = ->
  trovilibron.bookSearch.controller calatrava.bridge.pages.pageNamed "bookSearchForm"