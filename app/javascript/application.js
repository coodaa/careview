// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import { initStarRating } from './controllers/init_star_rating';

initStarRating();

import { initSweetalert } from './controllers/init_sweetalert';

initSweetalert('#sweet-alert', {
  title: "Thanks",
  text: "The Message was sent",
  icon: "success"
}, (value) => {
  console.log(value);
});
