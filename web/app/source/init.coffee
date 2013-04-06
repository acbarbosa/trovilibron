root = this
root.calatrava ?= {}
calatrava = root.calatrava

$(document).ready ->
  trovilibron.bookSearch.start()
  calatrava.bridge.changePage "bookSearchForm"

window.onpopstate = (event) ->
  if event.state
    tw.bridge.changePage event.state.page
