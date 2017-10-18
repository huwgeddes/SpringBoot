define(['vue', 'vuex'], function (Vue, Vuex) {
  Vue.use(Vuex);

  const store = new Vuex.Store({
      strict: false,
      state: {
        patient: {}
      },
      getters : {
        patient : state => state.patient
      },
      mutations: {
        setPatient(state, patient) {
          state.patient = patient;
        }
      }
    });

  return store;
});