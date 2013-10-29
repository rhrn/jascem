express = require 'express'
mongodb = require 'mongodb'
promise = require 'node-promise'
configs = require './configs'
routers = require './routes'

app = express()

dbDeffered = promise.defer()
MongoClient = mongodb.MongoClient
MongoClient.connect configs.mongo.link, (err, db) ->

  if err
    dbDeffered.reject err
  else
    dbDeffered.resolve db

  return

module.exports.db   = dbDeffered.promise
module.exports.app  = app
module.exports.port = configs.port
