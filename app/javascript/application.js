// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import { initStarRating } from './controllers/init_star_rating';
window.initStarRating = initStarRating
initStarRating();

import { initSweetalert } from './controllers/init_sweetalert';

initSweetalert('#sweet-alert', {
  title: "Thanks",
  text: "Your message was sent",
  icon: "success"
}, (value) => {
  console.log(value);
});
