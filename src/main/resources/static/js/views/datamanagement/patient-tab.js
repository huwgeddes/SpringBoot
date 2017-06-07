define(['vue', 'text!views/datamanagement/template/patient-template.html'], function(Vue, template) {
	Vue.component('patient-tab', {
	  template: template,
	  props: ['patient'],
	  data : function () {
		  return {
			  listItem : ''
		  }
	  },
	  methods : {
		  addItemToList: function () {
			  this.patient.list.push(this.listItem);
		  }
	  }
	});
});