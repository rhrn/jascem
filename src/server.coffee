index = require './index'

index.db.then () ->
  index.app.listen index.port
  console.log 'http://localhost:%s', index.port
