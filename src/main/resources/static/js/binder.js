define(['jquery'], function($) {
		var deferred = $.Deferred();
		var root = $(":root");

		var components = root.find("[data-component]").map(function(i, c) { return $(c); });
		var componentNames = components.map(function(i, c) { return c.data("component"); }).get();

		require($.map(componentNames, function(c) { return c; }), function() {
			deferred.resolve();
		});
		
		return deferred.promise();
});