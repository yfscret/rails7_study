// Entry point for the build script in your package.json
import "bootstrap";

import jquey from 'jquery'
window.jQuery = jquey;
window.$ = jquey;

import "trix"
import "@rails/actiontext"
import "@hotwired/turbo-rails"
