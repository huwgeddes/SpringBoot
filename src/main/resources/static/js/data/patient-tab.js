define(['vue', 'text!./template/patient-template.html'],
  function(Vue, template) {
	Vue.component('patient-tab', {
	  template: template,
	  computed: {
      patient () {
        return this.$store.state.patient;
      }
	  },
	  // data : function () {
		 //  return {
		 //  }
	  // },
	  methods : {
		  addItemToList: function () {
			  // this.patient.cancers.push(this.listItem);
		  }
	  }
	});
});