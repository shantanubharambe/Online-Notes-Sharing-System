/**
 * 
 */
function callAxax(str){
	
	let xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200)
		{
			document.getElementById("sdata").innerHTML=this.responseText;
		}
	}
	xhttp.open("GET","searchstudentdata.jsp?sname="+str,true);
	xhttp.send();
}