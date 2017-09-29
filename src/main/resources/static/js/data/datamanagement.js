define(['jquery', 'mustache', './child'], function($, mustache, childComponent) {
  function Datamanagement() {
    var self = this;

    self.childComponent = new childComponent(self);

    console.log("new function");

    $('.data-search').on('click', function() {
      self.clickSearch();
      self.childComponent.anotherClickSearch();
    });
  }

  Datamanagement.prototype = {
    clickSearch : function() {
      console.log("Click Searched!")
    },

    parentMethod : function() {
      console.log("parent method");
    }
  };

  new Datamanagement();
});