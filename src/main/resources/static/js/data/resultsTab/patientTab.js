define(['jquery', 'mustache', 'dirtyForms'], function($, mustache) {

  function PatientTab(resultsPanel) {
    var self = this;
    self.resultsPanel = resultsPanel;

    self.patientForm = $(".patientForm");

    self.patientTemplate = $("#patient-tab").html();
    mustache.parse(self.patientTemplate);

  }

  PatientTab.prototype = {
    showSearchResults: function(patient) {
      let self = this;

      // render patient tab
      let rendered = mustache.render(self.patientTemplate, patient);
      $("#patient-tab").html(rendered);

      // set up the dirty forms
      self.setUpPatientDirtyForm();

    },
    setUpPatientDirtyForm: function() {
      let self = this;

      self.patientForm.dirtyForms();

      self.patientForm.find('[type="reset"],[type="button"]').attr('disabled', 'disabled');
      self.patientForm.on('dirty.dirtyforms clean.dirtyforms', function (ev) {
        let $form = $(ev.target);
        let $submitResetButtons = $form.find('[type="reset"],[type="button"]');
        if (ev.type === 'dirty') {
          $submitResetButtons.removeAttr('disabled');
        } else {
          $submitResetButtons.attr('disabled', 'disabled');
        }
      });

    }
  };


  return PatientTab;

});