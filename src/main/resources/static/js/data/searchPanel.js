define(['jquery', '../services/patientService' ], function($, patientService) {

  function SearchPanel(dataManagement) {
    var self = this;
    self.dataManagement = dataManagement;

    $('.data-search').on('click', function() { self.searchPatient(); });

    self.warningPanel = $("<div/>").addClass('alert alert-warning alert-dismissible');
    self.warningPanel.append($('<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'));
  }

  SearchPanel.prototype = {
    searchPatient: function() {
      var self = this;
      var patientId = $('#patientId').val();
      $(".alert").remove();

      patientService.getPatient(patientId).done(function(patient) {
        $('h1').addClass("animated slideOutRight");
        self.dataManagement.showSearchResults(patient);
        setTimeout(function() {$('h1').addClass("hidden")}, 500);


      }).fail(function() {

        self.dataManagement.hideSearchResults();
        var alert = self.warningPanel.clone(false);
        alert.append("Patient not found");
        $('#patientId').after(alert);

      });
    }
  };

  return SearchPanel;
});