class App.Routers.ScratchPaperRouter extends Backbone.Router
	routes:
		'': 'index'
		'notes/:id': 'showNote'

	index: -> 
		alert('You are at index page')

	showNote: (id) ->
		alert ("you requested a note with id of #{id}")