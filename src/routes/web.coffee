Home = require '../controllers/home'

module.exports = (app, db) ->

  home = new Home db

  app.get '/', home.index
