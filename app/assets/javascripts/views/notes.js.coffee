class App.Views.Notes extends Backbone.View
	template: JST['notes/index']

	

	render: ->
		@$el.html(@template())
		@collection.forEach(@renderNote)
		this

	renderNote: (note) =>
		view = new App.Views.ShowNote(model:note, tagName: 'li' )
		@$('.notes').append(view.render().el)


	showNote: (e) ->
		$this = $(e.currentTarget)
		url = $this.attr('href')
		Backbone.history.navigate(url, trigger: true)
		false