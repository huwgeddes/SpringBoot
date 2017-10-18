define(['vue', 'vue-resource', './store', './patient-tab', './cancer-tab'],
  function (Vue, VueResource, store) {
    Vue.use(VueResource);

    var datamanagement = new Vue({
      el: '#datamanagement',
      store,
      data: {
        showResults: false,
        patientId: ''
      },
      methods: {
        findPatient: function () {
          this.$http.get("/patient/findById", {params: {patientId: this.patientId}}).then(response => {
            store.commit('setPatient', response.data);
            this.showResults = true;
          });
        },
        createNewPatient: function () {
          this.showResults = true;
        }
      },
      computed: {
        isNotNumeric: function () { //Update to use underscore.js
          return this.patientId == '' || isNaN(parseFloat(this.patientId)) && !isFinite(this.patientId);
        }
      }
    });

    return datamanagement;
  });