requirejs.config({
    paths: {
      "jquery": "http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min",
      "bootstrap": "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min",
      "vue" : "https://unpkg.com/vue@2.2.6/dist/vue",
      "vue-resource" : "https://unpkg.com/vue-resource@1.3.1/dist/vue-resource",
      "text" : "/webjars/requirejs-text/2.0.15/text",
      "vuex" : "https://unpkg.com/vuex@2.3.1/dist/vuex"
    },

    shim: {
        "bootstrap": {
            deps: ["jquery"]
        }
    }
});

// Load the main app module to start the app
requirejs(["binder", "bootstrap"]);