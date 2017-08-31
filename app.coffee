axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(
      files: [
        'assets/js/vendor/jquery.js',
        'assets/js/vendor/foundation.js',
        'assets/js/main.coffee'
      ]
    ),
    css_pipeline(
      files: [
        'assets/css/vendor/foundation.css',
        'assets/css/vendor/motion-ui.css',
        'assets/css/vendor/tachyons.css',
        'assets/fonts/fontawesome/css/font-awesome.css'
        'assets/css/master.styl'
      ]
    )
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
