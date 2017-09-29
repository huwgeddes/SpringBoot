requirejs.config({
    paths: {
      "jquery": "http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min",
      "bootstrap": "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min",
      "mustache" : "/webjars/mustache/2.2.1/mustache"
    },

    shim: {
        "bootstrap": {
            deps: ["jquery"]
        }
    }
});

// Load the main app module to start the app
requirejs(['./data/datamanagement', 'bootstrap'], function(Datamanagement) {

});