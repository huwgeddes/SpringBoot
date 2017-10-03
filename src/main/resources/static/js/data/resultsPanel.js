define(['jquery', 'mustache', 'dirtyForms'], function($, mustache) {

  function ResultsPanel(dataManagement) {
    var self = this;
    self.dataManagement = dataManagement;
    self.resultsData = null;

    self.patientTemplate = $("#patient-tab").html();
    mustache.parse(self.patientTemplate);

    self.cancerSelectTemplate = $(".cancer-select").html();
    mustache.parse(self.cancerSelectTemplate);

    self.cancerDataTemplate = $(".cancer-data").html();
    mustache.parse(self.cancerDataTemplate);


    $(".cancer-select").on("change", function() { self.onCancerSelect(); });


  }

  ResultsPanel.prototype = {
    showSearchResults: function(patient) {
      var self = this;
      self.resultsData = patient;

      var rendered = mustache.render(self.patientTemplate, patient);
      $("#patient-tab").html(rendered);

      var selectRendered = mustache.render(self.cancerSelectTemplate, patient);
      $(".cancer-select").html(selectRendered);

      self.setUpPatientDirtyForm();
      // self.setUpCancerDirtyForm();

      $(".cancer-select").change();

      $('#resultsPanel').removeClass("hidden");

    },
    onCancerSelect : function() {
      var self = this;

      var selectedId = $(".cancer-select").val();
      var selectCancer = null;

      self.resultsData.cancers.forEach(function(can) {
          if (can.id == selectedId) {
            selectCancer = can;
          }
      });

      var cancerData = mustache.render(self.cancerDataTemplate, selectCancer);
      $(".cancer-data").html(cancerData);

    },
    hideSearchResults: function() {
      var self = this;
      $('#resultsPanel').addClass("hidden");
    },
    setUpPatientDirtyForm: function() {

      $(".patientForm").dirtyForms();

      $('.patientForm').find('[type="reset"],[type="button"]').attr('disabled', 'disabled');
      $('.patientForm').on('dirty.dirtyforms clean.dirtyforms', function (ev) {
        var $form = $(ev.target);
        var $submitResetButtons = $form.find('[type="reset"],[type="button"]');
        if (ev.type === 'dirty') {
          $submitResetButtons.removeAttr('disabled');
        } else {
          $submitResetButtons.attr('disabled', 'disabled');
        }
      });

    },
    setUpCancerDirtyForm: function() {

      $('.cancerForm').find('[type="reset"],[type="button"]').attr('disabled', 'disabled');
      $('.cancerForm').on('dirty.dirtyforms clean.dirtyforms', function (ev) {
        var $form = $(ev.target);
        var $submitResetButtons = $form.find('[type="reset"],[type="button"]');
        if (ev.type === 'dirty') {
          $submitResetButtons.removeAttr('disabled');
        } else {
          $submitResetButtons.attr('disabled', 'disabled');
        }
      });

    }
  };

  return ResultsPanel;
});