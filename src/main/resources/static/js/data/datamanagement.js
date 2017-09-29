define(['jquery', 'mustache'], function($, mustache) {
  function Datamanagement() {
    var self = this;

    console.log("new function");

    $('.data-search').on('click', function() {
      self.clickSearch();
    });
  }

  Datamanagement.prototype = {
    clickSearch : function() {
      console.log("Click Searched!")
    }
  };

  return Datamanagement;
});