		// 原生js加class---开始
	    	function hasClass(obj, cls) {  
			    return obj.className.match(new RegExp('(\\s|^)' + cls + '(\\s|$)'));  
			}  
			function addClass(obj, cls) {  
			    if (!this.hasClass(obj, cls)) obj.className += " " + cls;  
			}  
			function removeClass(obj, cls) {  
			    if (hasClass(obj, cls)) {  
			        var reg = new RegExp('(\\s|^)' + cls + '(\\s|$)');  
			        obj.className = obj.className.replace(reg, ' ');  
			    }  
			}  
			function toggleClass(obj,cls){  
			    if(hasClass(obj,cls)){  
			        removeClass(obj, cls);  
			    }else{  
			        addClass(obj, cls);  
			    }  
			}  
			function toggleClassTest(){  
			    var obj = document. getElementById('test');  
			    toggleClass(obj,"testClass");  
			}  
		// 原生js加class---结束