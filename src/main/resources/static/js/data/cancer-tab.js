define(['vue', 'text!./template/cancer-template.html'],
  function (Vue, template) {
  Vue.component('cancer-tab', {
    template: template,
    computed: {
      patient() {
        return this.$store.getters.patient;
      }
    },
    data: function () {
      return {
        selected: {}
      }
    }
  });
});