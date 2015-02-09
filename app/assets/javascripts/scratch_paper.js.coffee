window.ScratchPaper =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->	
  	@AllNotes = [
  		{id: 1, title: 'first note', content: 'i dont like coffee'},
  		{id: 2, title: 'second note', content: 'i like coffee'},
  		{id: 3, title: 'third note', content: 'i like bubbletea'}
  	]
  	new @Routers.ScratchPaperRouter
  	Backbone.history.start(pushState: true)

window.App = window.ScratchPaper

$(document).ready ->
  ScratchPaper.initialize()
