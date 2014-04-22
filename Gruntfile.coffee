module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    sass:
      dist:
        files: [
          expand: true
          cwd: 'sass/'
          src: '*.scss'
          dest: 'css/'
          ext: '.css'
        ]

    watch:
      css:
        files: 'sass/*.scss'
        tasks: ['sass']
      coffeescript:
        files: 'src/*.coffee'
        tasks: ['coffee']

    bowerInstall:
      target:
        src: 'index.html' # point to your HTML file.

    coffee:
      all:
        expand: true
        cwd: 'src/'
        src: '*.coffee'
        dest: 'js/'
        ext: '.js'

    karma:
      unit:
        configFile: 'karma.conf.coffee'
      e2e:
        configFile: 'karma-e2e.conf.coffee'

  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-bower-install'
  grunt.loadNpmTasks 'grunt-karma'
  grunt.registerTask 'default', [
    'bowerInstall'
    'sass'
    'coffee'
  ]
  return

# grunt.registerTask('watch',['watch']);
