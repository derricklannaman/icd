$( document ).on('turbolinks:load', function() {
    $('input#q').autocomplete({
      source: "/autocomplete",
      minLength: 2})
})