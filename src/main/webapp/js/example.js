define(['vue', 'simple-counter'], function(Vue) {
	new Vue({
	  el: '#example',
	  data: {
		  total: 0
	  },
	  methods : {
		  incrementTotal: function() {
			  this.total += 1;
		  }
	  }
	});
});