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
			var num=0;
			var t=new Array();
			var to = data%1000;		//121
			console.log("to>>"+to);
			data -=to;		//2,015,000
			console.log(data);
			data /=1000;	//2,015
			t[num] = ','+to;
			console.log(t[num]);
			num++;
				
			
			
		}
		return "0,000";				
	
	
}