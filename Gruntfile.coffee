"use strict"

module.exports = (grunt) ->

  # Load grunt tasks automatically
  require("load-grunt-tasks") grunt

  # Time how long tasks take. Can help when optimizing build times
  require("time-grunt") grunt

  grunt.initConfig
    watch:
      sass:
        files: [
          "sass/*.scss"
          "sass/**/*.scss"
          "sass/_partials/*.scss"
          "sass/_partials/**/*.scss"
        ]
        tasks: ["sass:dist"]

    sass:
      options:
        #sourceComments: "map"
        outputStyle: "compressed"

      dist:
        files:
          "Rubix.css": "sass/Rubix.scss"

  grunt.registerTask "default", [
    "sass:dist"
  ]
