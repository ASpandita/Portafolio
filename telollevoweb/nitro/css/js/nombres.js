/*
<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
	<a href="work.html">
		<img src="images/work_1.png" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
		<h3 class="fh5co-work-title">Work Title Here</h3>
		<p>Illustration, Branding</p>
	</a>
</div
<div class="clearfix visible-sm-block"></div>
*/
var arr=[];
var xhr = new XHR();
xhr.setMethod("post");
xhr.setCallBackFunct('cb()');
xhr.setURL("login.php");
xhr.send();
var sandia = "";
	
function cb(){
	 arr = xhr.getResponse();
	//alert("arreg:"+arr);
	var yuca = "{\"arreglo\":"+arr+"}"
	//alert(yuca);
	sandia = JSON.parse(yuca);
	//alert(sandia.arreglo.length);
	//alert(sandia.arreglo[0].nom_tran);
	
	
	crearlista();
}	

/*var log = <?php echo "'$resp'"; ?>;
alert(log);
*/


//var arr= ['carlos','adrian','edixon'];
function crearlista(){
for (var i = 0; i < sandia.arreglo.length; i++) {
	
	var divisor = document.createElement("div");
divisor.class="clearfix visible-sm-block";
var contenedor = document.createElement("div");
contenedor.class = "col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item";
var nombres = document.createElement("h3");
nombres.class = "fh5co-work-title";
var t = document.createTextNode(sandia.arreglo[i].nom_tran);
nombres.appendChild(t);
var imagen = document.createElement("img");
imagen.src="images/car.png"; 
imagen.class="img-responsive";

var a = document.createElement("a");
a.href="work.html?posicion="+i;
a.appendChild(imagen);
a.appendChild(nombres);
contenedor.appendChild(a);
var gigante = document.getElementById('mundo');
gigante.appendChild(contenedor);



};
}
