define(['jquery', 'mustache'], function($, mustache) {

  function ResultsPanel(dataManagement) {
    var self = this;
    self.dataManagement = dataManagement;
    self.searchResultsPanel = $('#resultsPanel');

  }

  ResultsPanel.prototype = {
    showSearchResults: function(patient) {
      var self = this;
      self.searchResultsPanel.removeClass("hidden");
    }
  };

  return ResultsPanel;
});