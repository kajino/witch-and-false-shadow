gulp = require 'gulp'
watch = require 'gulp-watch'
browserify = require 'browserify'
source = require 'vinyl-source-stream'
glob = require 'glob'

getFilePath = ->
  src_dir = "./src"
  spec_dir = "./spec"
  src_dir: src_dir
  spec_dir: spec_dir
  src_files: glob.sync "#{src_dir}/*.coffee"
  spec_files: glob.sync "#{spec_dir}/**/*_spec.coffee"

gulp.task 'watch', =>
  paths = getFilePath()
  gulp.watch ["#{paths.src_dir}/**/*"], ['build']
  gulp.watch ["#{paths.spec_dir}/**/*"], ['build-test']


gulp.task 'build', =>
  paths = getFilePath()
  browserify
    entries: paths.src_files
  .transform 'coffeeify'
  .transform 'debowerify'
  .transform 'vueify'
#  .transform 'uglifyify'
  .bundle()
  .on 'error', (err)->
    console.log err.toString()
    this.emit 'end'
  .pipe source 'build.js'
  .pipe gulp.dest "./public/"

gulp.task 'build-test', =>
  paths = getFilePath()
  browserify
    entries: paths.spec_files
  .transform 'coffeeify'
  .transform 'debowerify'
  .transform 'vueify'
  .bundle()
  .on 'error', (err)->
    console.log err.toString()
    this.emit 'end'
  .pipe source 'build-test.js'
  .pipe gulp.dest "./public-test/"
