<%@taglib uri='/WEB-INF/mytags/mutags.tld' prefix='mu' %>
<mu:Module name="HOTELS" />
<jsp:include page='/header.jsp'/>
<body style='background-color:gainsboro'>
<section class="text-gray-600 body-font">
 <div class="container px-6 py-24 mx-auto">
<div class="flex w-full mb-20 flex-wrap">
<h1 style='border-bottom:2px solid black;width:20.9%;margin:auto;background:powderblue' class="sm:text-3xl text-2xl font-medium title-font text-gray-900 lg:w-1/3 lg:mb-0 mb-4">TOP RATED HOTELS IN UJJAIN</h1>  
</div>
   <div class='prominentplaces'>
   <div class="flex flex-wrap -mx-8 -mb-20 text-center">
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/imperial1.webp">
        </div>
        <a href="imperial.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Imperial Grand</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/rudraksh1.jpg">
        </div>
        <a href="rudraksh.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Rudraksh Club and Resort</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/anjushree1.webp">
        </div>
        <a href="anjushree.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Anjushree</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/abika1.jpeg">
        </div>
        <a href="abika.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Abika Elite</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/atharva1.jpg">
        </div>
        <a href="atharva.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Hotel Atharva</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/meghdoot1.jpg">
        </div>
        <a href="meghdoot.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Meghdoot Resort</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/solitaire1.jpg">
        </div>
        <a href="solitaire.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Solitaire Hotel & Resort</a>
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
function hotels()
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