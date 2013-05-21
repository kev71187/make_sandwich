//declare global variables;
var canvasHelper;
var colors = [
	'red',
	'purple',
	'black',
	'pink',
	'blue',
	'orange',
	'green'
];
(function($) {
    $.fn.writeText = function(content) {
        var contentArray = content.split(""),
            current = 0,
            elem = this;
        setInterval(function() {
            if(current < contentArray.length) {
                elem.html(elem.html() + '<span style="color:' + colors[canvasHelper.randomNumber(colors.length)] + ';">' + contentArray[current++] + '</span>');
            }
        }, 50);
    };

})(jQuery);

function CanvasHelper() {
	var self = this;
	
	$.extend(self, {
		ctx: null,
		canvas: null,
		height: 0,
		width: 0,
		center: {
				x: null,
				y: null
			},

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
			self.canvas = document.getElementById('myCanvas');
			if (self.canvas != null ) {
				self.ctx = self.canvas.getContext('2d');
				self.height = self.canvas.height;
				self.width = self.canvas.width;
				self.center.x = self.width/2;
				self.center.y = self.height/2;

				self.setCircles();
				self.setCircles();
			}
		},

		setCircle: function(color, x = self.randomNumber(941), y = self.randomNumber(600), size = self.randomNumber(200)) {
			self.ctx.beginPath();
			self.ctx.fillStyle = color;
			self.ctx.arc(x, y,size,0,Math.PI*2,true);
			self.ctx.fill();	
		},

		setCircles: function () {
			for (i=0; i < colors.length; i++) {
				self.setCircle(colors[i])
			}
			
			self.setCircle('#8AC007', self.center.x, self.center.y, 200);
		},

		randomNumber: function(lastDigit) {
			return Math.floor(Math.random()*lastDigit);
		}

	});
	
	self.init()
};

$(document).ready(function() {
	canvasHelper = new CanvasHelper;

	if (typeof writeText != 'undefined') {
		$("#element").writeText(writeText);
	}
});
