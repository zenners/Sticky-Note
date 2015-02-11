class App.Views.ShowNote extends Backbone.View
	template: JST['notes/show']

	className: 'note'

	initialize: ->
		@listenTo(@model, 'invalid', @addError)
		@listenTo(@model, 'error', @addError)
		@lastUpdated = new App.Views.LastUpdated(model: @model)

	events:
		'change': 'save'
		'keydown': 'blurIfEnter'
		'focus .note-title, .note-content': 'beginEditing'
		'blur .note-title, .note-content': 'endEditting'
		'click .destroy-note': 'destroyNote'
		

	render: ->
		@$el.html(@template(note: @model))
		@lastUpdated.setElement(@$('.normal-footer')).render()
		this

	remove: ->
		@lastUpdated.remove(arguments...)
		super(arguments...)

	save: ->
		@model.set
			title: @$('.note-title').val()
			content: @$('.note-content').val()
		@model.save()
		false	

	blurIfEnter: (e) ->
		if e.keyCode == 13
			@$(':input').blur()

	beginEditing: ->
		@$el.addClass('editting')
		@$el.removeClass('error')
	
	endEditting: ->
		@$el.removeClass('editting')

	addError: ->
		@$el.addClass('error')

	destroyNote: ->
		@model.destroy()
		@remove()
		false