#!/bin/zsh
bundle exec jekyll build && cp -r _site/ ../jfoucher.github.com/ && cd ../jfoucher.github.com/ && closure-compiler --js='./assets/js/responsive-nav.min.js' --js='./assets/js/scripts.js' --js='./assets/js/dropcap.min.js' --js_output_file="./assets/js/script.min.js" --dependency_mode=NONE --jscomp_off=checkVars --jscomp_off=undefinedVars && closure-compiler --js='assets/js/modernizr.custom.15390.js' --js_output_file="assets/js/modernizr.custom.15390.min.js" --dependency_mode=NONE --jscomp_off=checkVars --jscomp_off=undefinedVars && git add . && git commit -am"publish" && git push origin master && cd ../jfoucher.com