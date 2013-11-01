Users = require '../models/users'

module.exports = (db) ->

  users = new Users db

  index: (req, res) ->
    res.render 'home',
      title: 'title'
      user: users.findOne()
    return
