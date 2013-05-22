var active;

function Active() {
	var self = this;
	
	$.extend(self, {
		interests: {
			watching: [],
			doing: []
		},

		init: function() {			
			self.initialize();			
			self.registerEvents()			
		},

		//register event listeners		
		registerEvents: function() {			
			$('.input').click(function() {
				self.activate(this);
				return false;
			});
		},

		initialize: function() {
			
		},

		activate: function(e) {
			$this = $(e);
			var input = $('.input');
			input.find('input').prop('disabled', true);
			$this.find('input').prop('disabled', false);
			input.removeClass('active');
			$this.addClass('active');
		}
	});

	self.init()
}
 
$(document).ready(function() {

	active = new Active();
});