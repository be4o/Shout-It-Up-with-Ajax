document.getElementById("btnsub").onclick = function(){
		var user = document.getElementById("user").value;
		var msg = document.getElementById("message").value;
		var req = new XMLHttpRequest();
		req.onreadystatechange = function (){
			if( req.readyState == 4 & req.status == 200){
				document.getElementById("error").style.display = "block";
				if(req.responseText == "yes"){
					document.getElementById("error").innerHTML = "Shout has been added";
					setTimeout(function(){document.getElementById("error").style.display = "none";},2000);
					var n = document.createElement("li");
					var d =new Date();
					var nt = "<span>";
					if(d.getHours()<=9) 
						nt+="0"+d.getHours()+":";
					else 
						nt+=d.getHours()+":";
					if(d.getMinutes()<=9) 
						nt+="0"+d.getMinutes()+":"; 
					else 
						nt+=d.getMinutes()+":"; 
					if(d.getSeconds()<=9) 
						nt+="0"+d.getSeconds();
					else
						nt+=d.getSeconds();
					nt+="</span> - <span id='userspan'>"+user+"</span>: "+msg;
					n.innerHTML=nt;
					n.className="shout";
					if(document.getElementById("shoutslist").children.length > 0){
						var firstli = document.getElementById("shoutslist").children[0];			
						firstli.parentNode.insertBefore(n,firstli);
					}else{
						document.getElementById("shoutslist").appendChild(n);
					}
					document.getElementById("user").value=document.getElementById("message").value="";
				}
				else
					document.getElementById("error").innerHTML = "Unknown Error";
			}		
		};
		req.open("post","process.php",true);
		req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		req.send("user="+user+"&message="+msg);
	}