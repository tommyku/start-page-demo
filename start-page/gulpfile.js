var gulp = require('gulp');
var pug  = require('gulp-pug');
var webpack = require('webpack');

gulp.task('html', function() {
  gulp.src(['src/html/**/*.pug'])
      .pipe(pug({pretty: true}))
      .pipe(gulp.dest('output'));
});

gulp.task('webpack', function(callback) {
  webpack(
    require('./webpack.config.js'),
    function(err, stats) {
      if(err) throw new gutil.PluginError("webpack", err);
      callback();
    }
  );
});

gulp.task('build', ['html', 'webpack']);

gulp.task('watch', function() {
  gulp.watch("src/html/**/*.pug", ['html']);
});

gulp.task('default', ['build', 'watch'], function() {
  // pass
});
