var myvue = define(['vue', 'vue-resource'], function(Vue, VueResource) {
  Vue.use(VueResource);
  var app = new Vue({
	  el : '#app',
		data : {
			message : 'Hello Vue!',
			users : [],
			isClicked : false
		},
		methods : {
			getUsers : function() {
				this.$http.get("/demo/all").then(response => {
					this.users = response.data;
					this.isClicked = true;
				});
			}
		}
   });
});