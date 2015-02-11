class App.Views.LastUpdated extends Backbone.View
	
	initiliaze: ->
		@listenTo(@model, "change:updated_at", @render)

	render: =>
		@$el.html(@lastUpdated())
		this

	lastUpdated: -> moment(@model.get("updated_at")).calendar()

