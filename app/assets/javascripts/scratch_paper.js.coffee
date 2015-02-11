window.ScratchPaper =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->	
    @AllNotes = new @Collections.Notes(@notesJson, parse: true)
    view = new App.Views.Notes(collection: @AllNotes)
    $('#container').html(view.render().el)


window.App = window.ScratchPaper

$(document).ready ->
  ScratchPaper.initialize()
