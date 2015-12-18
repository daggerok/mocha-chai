mocha    =
  open : true
  dir  : 'mocha/**/*.*'
  src  : 'src/**/*.*'
  dist : 'dist/'
gulp     = require 'gulp'
connect  = require 'gulp-connect'
open     = require 'gulp-open'

gulp.task 'default', -> 
  gulp.src [
      'node_modules/chai/chai.js'
      mocha.dir
      mocha.src
    ]
    .pipe(gulp.dest mocha.dist)
    .pipe(connect.reload())

gulp.task 'connect', ->
  connect.server
    root: mocha.dist
    livereload: true

gulp.task 'tdd', ['connect'], ->
  gulp.watch [mocha.src, mocha.dir], ['default']
  gulp.src(mocha.dist).pipe(open uri: 'http://localhost:8080') if mocha.open
