window.ScratchPaper =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->	
    @AllNotes = new @Collections.Notes
    @AllNotes.fetch().done =>
      new @Routers.ScratchPaperRouter
      Backbone.history.start(pushState: true)

window.App = window.ScratchPaper

$(document).ready ->
  ScratchPaper.initialize()
