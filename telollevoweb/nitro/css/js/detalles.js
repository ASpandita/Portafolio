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
xhr.setURL("detalle.php");
xhr.send();
var sandia = "";
var paramstr = window.location.search.substr(1);
var paramarr = paramstr.split("&");
var params = {};

for (var i = 0; i < paramarr.length; i++) {
	var tmparr = paramarr[i].split("=");
	params[tmparr[0]]=tmparr[1];
}

var pos = params['posicion'];
//alert(pos); 
	
function cb(){
	 arr = xhr.getResponse();
	//alert("arreg:"+arr);
	var yuca = "{\"arreglo\":"+arr+"}"
	//alert(yuca);
	sandia = JSON.parse(yuca);
	//alert("pos parse:"+pos);
	//alert(sandia.arreglo[0].nom_tran);
	//alert(sandia.arreglo[0].nom_tran);
	
	
	crearlista();
}	

/*var log = <?php echo "'$resp'"; ?>;
alert(log);
*/
/*<p>
<a>datos</a>
</p>
*/
//var arr= ['carlos','adrian','edixon'];
function crearlista(){
//for (var i = 0; i < sandia.arreglo.length; i++) {
	

var dat_n = document.createElement("p");
var t_n = document.createTextNode("Nombre: "+sandia.arreglo[pos].nom_tran);
dat_n.appendChild(t_n);

var dat_a = document.createElement("p");
var t_a = document.createTextNode("Apellido: "+sandia.arreglo[pos].ape_tran);
dat_a.appendChild(t_a);

var dat_ce = document.createElement("p");
var t_ce = document.createTextNode("Cedula: "+sandia.arreglo[pos].cedula_tran);
dat_ce.appendChild(t_ce);

var dat_co = document.createElement("p");
var t_co = document.createTextNode("Correo: "+sandia.arreglo[pos].correo_tran);
dat_co.appendChild(t_co);

var dat_pa = document.createElement("p");
var t_pa = document.createTextNode("Contraseña: "+sandia.arreglo[pos].pass_tran);
dat_pa.appendChild(t_pa);

var dat_t = document.createElement("p");
var t_t = document.createTextNode("Telefono: "+sandia.arreglo[pos].telefono_tran);
dat_t.appendChild(t_t);

var dat_ma = document.createElement("p");
var t_ma = document.createTextNode("Marca: "+sandia.arreglo[pos].marca_tran);
dat_ma.appendChild(t_ma);

var dat_mo = document.createElement("p");
var t_mo = document.createTextNode("Modelo: "+sandia.arreglo[pos].modelo_tran);
dat_mo.appendChild(t_mo);

var dat_pl = document.createElement("p");
var t_pl = document.createTextNode("Placa: "+sandia.arreglo[pos].placa_tran);
dat_pl.appendChild(t_pl);

//it = id_tran
var dat_it = document.createElement("p");
var t_it = document.createTextNode("Id: "+sandia.arreglo[pos].id_tran);
dat_it.appendChild(t_it);

//is = id_status
var dat_is = document.createElement("p");
var t_is = document.createTextNode("Status: "+sandia.arreglo[pos].id_status);
dat_is.appendChild(t_is);

var dat_in = document.createElement("p");
var t_in = document.createTextNode("Inicio: "+sandia.arreglo[pos].iniciot_tran);
dat_in.appendChild(t_in);

var dat_fi = document.createElement("p");
var t_fi = document.createTextNode("Finalizado: "+sandia.arreglo[pos].finalizadot_tran);
dat_fi.appendChild(t_fi);

var dat_bl = document.createElement("p");
var t_bl = document.createTextNode("Bloqueado: "+sandia.arreglo[pos].bloquero_tran);
dat_bl.appendChild(t_bl);

var dat_ga = document.createElement("p");
var t_ga = document.createTextNode("Ganancia: "+sandia.arreglo[pos].ganancia_tran);
dat_ga.appendChild(t_ga);



var gigante = document.getElementById('datos');
gigante.appendChild(dat_n);
gigante.appendChild(dat_a);
gigante.appendChild(dat_ce);
gigante.appendChild(dat_co);
gigante.appendChild(dat_pa);
gigante.appendChild(dat_t);
gigante.appendChild(dat_ma);
gigante.appendChild(dat_mo);
gigante.appendChild(dat_pl);
gigante.appendChild(dat_it);
gigante.appendChild(dat_is);
gigante.appendChild(dat_in);
gigante.appendChild(dat_fi);
gigante.appendChild(dat_bl);
gigante.appendChild(dat_ga);

//};
}
