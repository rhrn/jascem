module.exports = (app, db) ->

  app.get '/api', (req, res) ->
    res.send 'api'
