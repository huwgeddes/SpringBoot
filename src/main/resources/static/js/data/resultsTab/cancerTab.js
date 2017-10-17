define(['jquery', 'mustache', 'dirtyForms'], function($, mustache) {

  function CancerTab(resultsPanel) {
    var self = this;
    self.resultsPanel = resultsPanel;

    self.cancerSelect = $(".cancer-select");
    self.cancerForm = $('.cancerForm');

    self.cancerSelectTemplate = self.cancerSelect.html();
    mustache.parse(self.cancerSelectTemplate);

    self.cancerDataTemplate = $(".cancer-data").html();
    mustache.parse(self.cancerDataTemplate);

    self.cancerSelect.on("change", function() { self.onCancerSelect(); });

    $(".cancerForm .btn-primary").click(function() { self.cancerUpdate(); });

  }

  CancerTab.prototype = {
    showSearchResults: function(patient) {
      let self = this;

      self.cancerData = patient.cancers;

      // render cancer tab
      let selectRendered = mustache.render(self.cancerSelectTemplate, patient);
      self.cancerSelect.html(selectRendered);
      self.cancerSelect.change();

      self.setUpCancerDirtyForm();

    },
    onCancerSelect : function() {
      let self = this;

      let selectedId = $(".cancer-select").val();
      let selectCancer = null;

      self.cancerData.forEach(function(can) {
        if (can.id == selectedId) {
          selectCancer = can;
        }
      });

      let cancerTemplate = mustache.render(self.cancerDataTemplate, selectCancer);
      $(".cancer-data").html(cancerTemplate);
      $('.cancerForm').find('[type="reset"],[type="button"]').attr('disabled', 'disabled');

    },
    cancerUpdate: function() {
      console.log("log");
    },
    setUpCancerDirtyForm: function() {
      let self = this;

      $('.cancerForm').dirtyForms();

      $('.cancerForm').find('[type="reset"],[type="button"]').attr('disabled', 'disabled');
      $('.cancerForm').on('dirty.dirtyforms clean.dirtyforms', function (ev) {
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

  return CancerTab;

});