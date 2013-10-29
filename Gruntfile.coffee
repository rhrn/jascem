module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

  grunt.registerTask 'default', 'Default task...', ->
    grunt.log.write '...default task'
