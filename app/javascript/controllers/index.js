// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ChatroomSubscriptionController from "./chatroom_subscription_controller.js"
application.register("chatroom-subscription", ChatroomSubscriptionController)

import HelloController from "./hello_controller.js"
application.register("hello", HelloController)

import MapController from "./map_controller.js"
application.register("map", MapController)

import MapViewController from "./map_view_controller.js"
application.register("map-view", MapViewController)

import ModalController from "./modal_controller.js"
application.register("modal", ModalController)

import ModalmessageController from "./modalmessage_controller.js"
application.register("modalmessage", ModalmessageController)

import RatingsBarController from "./ratings_bar_controller.js"
application.register("ratings-bar", RatingsBarController)

import ReviewController from "./review_controller.js"
application.register("review", ReviewController)

import ShowAllReviewsController from "./show_all_reviews_controller.js"
application.register("show-all-reviews", ShowAllReviewsController)

import ToggleFavoriteController from "./toggle_favorite_controller.js"
application.register("toggle-favorite", ToggleFavoriteController)
