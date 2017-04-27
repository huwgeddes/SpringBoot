define(['vue', 'text!../views/template/simple-counter-template.html'], function(Vue, template) {
	Vue.component('simple-counter', {
	  props: ['initial'],
	  //template: '<button class="btn" v-on:click="increment">{{ counter }}</button>',
	  template: template,
	  data: function () {
	    return {
	        counter: this.initial
	    }
	  },
	  methods: {
		  increment: function() {
			  this.counter += 1;
			  this.$emit('increment');
		  }
	  }
	});
});