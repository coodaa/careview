import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'bars-pill'
  });

  $('#review_food').barrating({
    theme: 'bars-pill'
  });

  $('#review_privacy').barrating({
    theme: 'bars-pill'
  });

  $('#review_staff').barrating({
    theme: 'bars-pill'
  });

  $('#review_hygiene').barrating({
    theme: 'bars-pill'
  });

  $('#review_atmosphere').barrating({
    theme: 'bars-pill'
  });
};

export { initStarRating };
