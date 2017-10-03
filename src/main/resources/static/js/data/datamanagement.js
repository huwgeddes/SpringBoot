define(['jquery', 'mustache', './resultsPanel', './searchPanel'], function($, mustache, resultsPanel, searchPanel) {
  function Datamanagement() {
    var self = this;

    self.resultsPanel = new resultsPanel(this);
    self.searchPanel = new searchPanel(this);

  }

  Datamanagement.prototype = {
    showSearchResults : function (patient) {
      var self = this;
      self.resultsPanel.showSearchResults(patient);
    },
    hideSearchResults : function () {
      var self = this;
      self.resultsPanel.hideSearchResults();
    }
  };

  new Datamanagement();
});