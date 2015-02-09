window.ScratchPaper =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> alert 'Hello from Backbone!'

window.App = window.ScratchPaper

$(document).ready ->
  ScratchPaper.initialize()
