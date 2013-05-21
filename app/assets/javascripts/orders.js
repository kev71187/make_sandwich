//declare global variables;
var canvasHelper;

(function($) {
    $.fn.writeText = function(content) {
        var contentArray = content.split(""),
            current = 0,
            elem = this;
        setInterval(function() {
            if(current < contentArray.length) {
                elem.text(elem.text() + contentArray[current++]);
            }
        }, 50);
    };

})(jQuery);

function CanvasHelper() {
	var self = this;
	
	$.extend(self, {
		
		//initializes CanvasHelper class
		init: function() {			
			self.initialize();			
			self.registerEvents()				
		},
		
		//register event listeners		
		registerEvents: function() {			

		},
		

		//initializes CanvasHelper.
		initialize: function() {
			var canvas = document.getElementById('canvas');
			ctx = canvas.getContext('2d');
		}
	});
	
	self.init()
};

$(document).ready(function() {
	canvasHelper = new CanvasHelper;

	if (typeof writeText != 'undefined') {
		//$("#element").writeText(writeText);
	}
});
