
module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig

    mocha:
      mochaBuiltInTest:
        #// Test files
        src: [ 'node_modules/grunt-mocha/example/test/test2.html' ]
        options:
          mocha:
            ignoreLeaks: false
          reporter: 'Nyan'
          run: true

      chaijs:
        options:
          mocha:
            ignoreLeaks: true
          urls: ['http://chaijs.com/api/test/']
          reporter: 'Nyan'
          run: false

      bootstrapTest:
        src: ['./SpecRunner.html']
        options:
          mocha:
            ignoreLeaks: true
          reporter: 'Spec'
          run: true

  grunt.loadNpmTasks 'grunt-mocha'
