matchdep = require('matchdep')

module.exports = (grunt) ->

  matchdep.filterDev('grunt-*').forEach(grunt.loadNpmTasks)

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    ####################

    connect: {
      server: {
        options: {
          port: 9000
          keepalive: true
        }
      }
    }

    ####################

    # less: {
    #   dev: {
    #     files: {
    #       'static/css/main.css': 'static/css/main.less'
    #     }
    #   }
    # }

    ####################

    # recess: {
    #   dist: {
    #     options: {
    #       compile: true
    #     }
    #     files: {
    #       'static/css/main.css': ['static/css/*.less']
    #     }
    #   }
    # }

    ####################

    # watch: {
    #   coffee: {
    #     files: ['static/js/*.coffee']
    #     tasks: ['buildjs']
    #     options: {
    #       debounceDelay: 1000
    #       # livereload: true
    #     }
    #   }
    #   less: {
    #     files: ['static/css/*.less']
    #     tasks: ['buildcss']
    #     options: {
    #       debounceDelay: 1000
    #       # livereload: true
    #     }
    #   }
    # }
  })

  grunt.registerTask('default', ['connect'])
