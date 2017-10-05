define(['jquery', './resultsTab/patientTab', './resultsTab/cancerTab'], function($, patientTab, cancerTab) {

  function ResultsPanel(dataManagement) {
    var self = this;
    self.dataManagement = dataManagement;
    self.resultsData = null;

    self.patientTab = new patientTab(this);
    self.cancerTab = new cancerTab(this);

  }

  ResultsPanel.prototype = {
    showSearchResults: function(patient) {
      let self = this;

      self.patientTab.showSearchResults(patient);
      self.cancerTab.showSearchResults(patient);

      $('#resultsPanel').removeClass("hidden");

    },
    hideSearchResults: function() {
      let self = this;
      $('#resultsPanel').addClass("hidden");
    }
  };

  return ResultsPanel;
});