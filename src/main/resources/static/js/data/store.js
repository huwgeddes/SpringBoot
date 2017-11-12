define(['vue', 'vuex'], function (Vue, Vuex) {
  Vue.use(Vuex);

  function initialState() {
    return {
      id: '',
      dateOfBirth: '',
      formattedDateOfBirth: '',
      gender:'',
      cancers: [],
    }
  }

  function newCancer() {
    return {
      id: '',
      cancerType: '',
      dateDiagnosed: '',
    }
  }

  const store = new Vuex.Store({
      strict: false,
      state: {
        patient: initialState()
      },
      getters : {
        patient : state => state.patient,
        lastCancer : function(state) {
          var cancers = state.patient.cancers;
          if (cancers.length > 1) {
            return cancers[cancers.length - 1];
          } else {
            return null;
          }
        }
      },
      mutations: {
        setPatient(state, patient) {
          state.patient = patient;
        },
        newCancer(state) {
          state.patient.cancers.push(newCancer());
        },
        reset(state) {
          state.patient = initialState();
        }
      }
    });

  return store;
});