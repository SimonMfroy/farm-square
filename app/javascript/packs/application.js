require('@lottiefiles/lottie-player');
require("pesky_scrolly_stuff");

import 'bootstrap';

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import AOS from 'aos';
document.addEventListener('DOMContentLoaded', function() {
  AOS.init({
    startEvent: 'turbolinks:load' // if you are using turbolinks
  });
});

Rails.start()
Turbolinks.start()
ActiveStorage.start()

