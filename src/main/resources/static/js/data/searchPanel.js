define(['jquery', '../services/patientService' ], function($, patientService) {

  function SearchPanel(dataManagement) {
    var self = this;
    self.dataManagement = dataManagement;

    $('.data-search').on('click', function() {self.searchPatient(); });
  }

  SearchPanel.prototype = {
    searchPatient: function() {
      var self = this;
      patientService.getPatient("12345").then(function(patient) {
        self.dataManagement.showSearchResults(patient);
      });
    }
  };

  return SearchPanel;
});