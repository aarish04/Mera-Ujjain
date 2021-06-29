<%@taglib uri='/WEB-INF/mytags/mutags.tld' prefix='mu' %>
<mu:Module name="PROMINENTPLACES" />
<jsp:include page='/header.jsp'/>
<body style='background-color:gainsboro'>
<section class="text-gray-600 body-font">
 <div class="container px-6 py-24 mx-auto">
<div class="flex w-full mb-20 flex-wrap">
<h1 style='border-bottom:2px solid black;width:16%;margin:auto;background:powderblue' class="sm:text-3xl text-2xl font-medium title-font text-gray-900 lg:w-1/3 lg:mb-0 mb-4">MUST VISITS IN UJJAIN</h1>  
</div>
   <div class='prominentplaces'>
   <div class="flex flex-wrap -mx-8 -mb-20 text-center">
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" id="img" style="width:50vh;height:60vh;margin:auto;position:static" src="images/meraujjain/mahakal.jpg">
        </div>
        <a href="mahakal.jsp" id="a" style="position:static" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Mahakaleshwar Jyotirlinga</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/kalbhairava1.jpg">
        </div>
        <a href="kalBhairava.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Kal Bhairava Temple</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/kd3.jpg">
        </div>
        <a href="kdPalace.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Kaliadeh Palace</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/jm1.jpg">
        </div>
        <a href="jantarMantar.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Jantar Mantar</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/mangalnath1.jpg">
        </div>
        <a href="mangalnath.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Mangalnath Temple</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/iskcon1.jpg">
        </div>
        <a href="iskcon.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">ISKCON Temple</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/gopalmandir1.jpg">
        </div>
        <a href="gopalMandir.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Gopal Mandir</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/ramghat1.jpg">
        </div>
        <a href="ramGhat.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Ram Mandir Ghat</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/gomtikund2.jpg">
        </div>
        <a href="gomtiKund.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Gomti Kund</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/gadkalika1.png">
        </div>
        <a href="gadkalika.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Gadkalika Temple</a>
      </div>

    </div>
   </div>
  </div>
</section>
<style>
.prominentplaces a
{
font-family:Gill Sans / Gill Sans MT, sans-serif;
display:block;
background:black;
color:white;
width:50vh;
height:25px;
margin:auto;
margin-top:10px;
border:2px solid black;
text-decoration:none;
}
.prominentplaces a:hover
{
background: linear-gradient(to top,snow,snow);
color: #272727;
}
</style>
<script>
function prominentPlaces()
{
let input=document.getElementById('searchBar').value;
input=input.toLowerCase();
let x=document.getElementsByClassName('title-font text-2xl font-medium text-gray-900 mt-6 mb-3');
let y=document.getElementsByTagName('img');
for(i=0;i<x.length;i++)
{
if(!x[i].innerHTML.toLowerCase().includes(input))
{
x[i].style.display="none";
y[i].style.display="none";
}
else
{
x[i].style.display="";
y[i].style.display="";
}
}
}
</script>
</body>
<jsp:include page='/footer.jsp'/>