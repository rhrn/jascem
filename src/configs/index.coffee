jade = require 'jade'
routes = require '../routes'
cwd = process.cwd()

module.exports =

  mongo:
    link: "mongodb://localhost:27017/test"

  port: 8008

  routes: (app, db) ->
    routes.web app, db 
    routes.api app, db 
    routes.adm app, db 

  middleware: (app, express) ->
    app.use '/public', express.static(cwd + '/dev/components')
    app.use '/static', express.static(cwd + '/dev/public/static')
    app.use express.bodyParser()
    app.use express.cookieParser()
    app.use express.logger()

    return

  views: (app, express) ->
    app.engine '.jade', jade.__express
    app.set 'views', cwd + '/dev/views'
    app.set 'view engine', 'jade'

    return
