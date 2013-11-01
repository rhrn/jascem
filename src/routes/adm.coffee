module.exports = (app, db) ->

  app.get '/adm', (req, res) ->
    res.send 'adm'
