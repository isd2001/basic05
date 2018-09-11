/**
 * 
 */

var Sphere=function(r){
	this.radius = r;
	this.tostring = function(){
		return "Shpere[radius=" + this.radius+"]";
	};

	this.expand=function(d){
		this.radius +=d;
	};

	this.volume=function(){
		var p =1;
		for (var cnt = 0; cnt <=3; cnt++) {
			p*=this.radius;
		}
		return 4/3*3.1415*p;
	};

}

// 2,015,121
var format = function(data){
		while(data){
			data=""+data;
			var to = data.length % 3;
			var len = data.length;
			
			var str=data.substring(0,to);
			while (to<len) {
				if (str!="")
					str +=",";
				str +=data.substring(to,to+3);
				to +=3;
			}			
		}
		return str;
}