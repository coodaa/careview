import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
  });

  $('#review_food').barrating({
    theme: 'css-stars'
  });

  $('#review_privacy').barrating({
    theme: 'css-stars'
  });

  $('#review_staff').barrating({
    theme: 'css-stars'
  });

  $('#review_hygiene').barrating({
    theme: 'css-stars'
  });

  $('#review_atmosphere').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
