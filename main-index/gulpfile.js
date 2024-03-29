var gulp = require('gulp'),
    uglify = require('gulp-uglify'),
    less = require('gulp-less-sourcemap'),
    plumber = require('gulp-plumber'),
    path = require('path');

// Uglyfies js on to /js/minjs
gulp.task('scripts', function(){
    gulp.src('js/*.js')
        .pipe(plumber())
        .pipe(uglify())
        .pipe(gulp.dest("js/minjs"));
});

// Compiles less on to /css
gulp.task('less', function () {
    gulp.src('less/**/*.less')
        .pipe(plumber())
        .pipe(less({
            paths: [ path.join('node_modules'), path.join('node_modules/patternfly/node_modules') ],
            sourceMap: {
                //sourceMapRootpath: '../less' // This one for KIE files (Optional absolute or relative path to your LESS files)
                sourceMapRootpath: '/' // This one for PF files (Optional absolute or relative path to your LESS files)
            }

        }))
        .pipe(gulp.dest('css'));
});


// deploys
gulp.task('default',  ['scripts', 'less']);
