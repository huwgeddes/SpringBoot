define(['vue', 'text!views/datamanagement/template/cancer-template.html'], function(Vue, template) {
	Vue.component('cancer-tab', {
	  template: template,
	  props : ['patient'],
	  data : function () {
		  return {
			  	selected : {}
			  }
	  }
	});
});