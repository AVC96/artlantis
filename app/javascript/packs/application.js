// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { showForm } from '../show_form';
import { favouriteHand } from '../favourite_hand';
import { disableButton } from '../disablebutton';
// import { initSelect2 } from '../components/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  showForm();
  favouriteHand();
  // disableButton();
  // initSelect2();
  const button = document.querySelector('#sweet-alert-demo');
  const openPrice = parseInt(document.querySelector('#openprice').dataset.openPrice);
  const current = document.querySelector('#currentprice');
  button.addEventListener('click',(event) => {
  console.log("Hello")
    const bidPrice = parseInt(document.querySelector('#bid_price').value);
  if (current){
    const currentPrice = parseInt(document.querySelector('#currentprice').dataset.currentPrice);
    if (bidPrice > openPrice && bidPrice > currentPrice){
    initSweetalert('#sweet-alert-demo', {
      title: "Yay! You've successfully Bid!",
      text: "You'll be hearing from us soon!",
      icon: "success"
    }, (value) => {
      if (value) {
        const link = document.querySelector('#submit_bid');
        link.click();
      }
    });
  } else {
    initSweetalert('#sweet-alert-demo', {
      title: "Oops! Your bid is unsuccesful!",
      text: "Place a higher bid!",
      icon: "warning"
    }, (value) => {

    });
  }
  }
  else {
    if (bidPrice > openPrice){
    console.log(openPrice)
    initSweetalert('#sweet-alert-demo', {
      title: "Yay! You've successfully Bid!",
      text: "You'll be hearing from us soon!",
      icon: "success"
    }, (value) => {
      if (value) {
        const link = document.querySelector('#submit_bid');
        link.click();
      }
    });
  } else {
    initSweetalert('#sweet-alert-demo', {
      title: "Oops! Your bid is unsuccesful!",
      text: "Place a higher bid!",
      icon: "warning"
    }, (value) => {

    });
    }
  }


  })




});
