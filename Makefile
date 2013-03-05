default: *.markdown *.scss
	jekyll
	scss style.scss _site/style.css
