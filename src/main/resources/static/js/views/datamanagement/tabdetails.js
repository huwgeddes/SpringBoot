var myvue = define([ 'vue', 'vue-resource', 'views/datamanagement/patient-tab', 'views/datamanagement/sample-tab' ], 
		function(Vue, VueResource) {
	Vue.use(VueResource);
	new Vue({
		el : '#tabDetails',
		data : {
			patient : [],
			showResults : false,
			patientId : ''
		},
		methods : {
			findPatient : function() {
				this.$http.get("/patient/findById/" + this.patientId).then(response => {
					this.patient = response.data;
					this.showResults = true;
				});
			},
			createNewPatient : function() {
				this.showResults = true;
			}
		}
	});
});