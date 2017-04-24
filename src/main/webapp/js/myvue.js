var app = new Vue({
	el : '#app',
	data : {
		message : 'Hello Vue!',
		users : []
	},
	methods : {
		getUsers : function() {
			this.$http.get("/demo/all").then(response => {
				this.users = response.data;
			});
		}
	}

})