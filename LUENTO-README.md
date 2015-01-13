
tee näin:

      wget -O reveal.tar.gz https://github.com/hakimel/reveal.js/archive/3.0.0.tar.gz
      tar xvzf reveal.tar.gz
      rm reveal/index.html
      ln -s ../index.html reveal
      cd reveal
      npm install
      grunt serve
      $BROWSER http://localhost:8000
