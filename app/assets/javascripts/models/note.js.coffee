class App.Models.Note extends Backbone.Model
	validate: ->
		unless @hasTitle() or @hasContent()
			'Must provide Title or Content'

	hasTitle: -> @hasAttribute('title')
	hasContent: -> @hasAttribute('content')
		
	hasAttribute: (attr) -> @has(attr) && @get(attr).trim() != ''

	parse: (data) ->
		data.content = data.body.content
		delete data.body
		data

	toJSON: ->
	  {
	    title: @get('title')
	    body:
	      type: 'sticky_note'
	      sticky_note:
	        content: @get('content')
	  }

	