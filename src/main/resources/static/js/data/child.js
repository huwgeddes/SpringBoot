define(['jquery', 'mustache'], function($, mustache) {
  function ChildComponent(datamanagement) {
    var self = this;
    self.parent = datamanagement;

    console.log("child loaded");
  }

  ChildComponent.prototype = {
    anotherClickSearch : function() {
      var self = this;
      console.log("Child click searched!")
      self.parent.parentMethod();
    }
  };

  return ChildComponent;
});