window.ScratchPaper =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new @Routers.ScratchPaperRouter
  	Backbone.history.start(pushState: true)

window.App = window.ScratchPaper

$(document).ready ->
  ScratchPaper.initialize()
