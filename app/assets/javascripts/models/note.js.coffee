class App.Models.Note extends Backbone.Model
	validate: ->
		unless @hasTitle() or @hasContent()
			'Must provide Title or Content'

	hasTitle: -> @hasAttribute('title')
	hasContent: -> @hasAttribute('content')
		
	hasAttribute: (attr) -> @has(attr) && @get(attr).trim() != ''

	