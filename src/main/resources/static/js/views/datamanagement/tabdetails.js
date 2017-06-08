var myvue = define([ 'vue', 'vue-resource', 'views/datamanagement/patient-tab', 'views/datamanagement/cancer-tab' ], 
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
				this.$http.get("/patient/findById", {params: {patientId: this.patientId}}).then(response => {
					if (!response.data.cancers) {
						response.data.cancers = [];
					}
					this.patient = response.data;
					this.showResults = true;
				});
			},
			createNewPatient : function() {
				this.showResults = true;
			}
		},
		computed: {
			isNotNumeric: function() { //Update to use underscore.js
				return this.patientId == '' || isNaN(parseFloat(this.patientId)) && !isFinite(this.patientId);
			}
		}
	});
});