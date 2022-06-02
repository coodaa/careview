// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller.js"
application.register("hello", HelloController)

import MapController from "./map_controller.js"
application.register("map", MapController)

import ModalController from "./modal_controller.js"
application.register("modal", ModalController)

import ModalmessageController from "./modalmessage_controller.js"
application.register("modalmessage", ModalmessageController)

import MapViewController from "./map_view_controller.js"
application.register("map-view", MapViewController)
