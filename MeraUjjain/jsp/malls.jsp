<%@taglib uri='/WEB-INF/mytags/mutags.tld' prefix='mu' %>
<mu:Module name="MALLS" />
<jsp:include page='/header.jsp'/>
<body style='background-color:gainsboro'>
<section class="text-gray-600 body-font">
 <div class="container px-6 py-24 mx-auto">
<div class="flex w-full mb-20 flex-wrap">
<h1 style='border-bottom:2px solid black;width:23%;margin:auto;background:powderblue' class="sm:text-3xl text-2xl font-medium title-font text-gray-900 lg:w-1/3 lg:mb-0 mb-4">TOP SHOPPING MALLS IN UJJAIN</h1>  
</div>
   <div class='prominentplaces'>
   <div class="flex flex-wrap -mx-8 -mb-20 text-center">
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/pakiza1.png">
        </div>
        <a href="pakiza.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Pakiza</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/cosmos1.png">
        </div>
        <a href="cosmos.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Cosmos</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/dmart1.png">
        </div>
        <a href="dmart.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">D-Mart</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/vishal1.png">
        </div>
        <a href="vishal.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">Vishal</a>
      </div>
      <div class="sm:w-1/2 mb-10 px-6">
        <div class="rounded-lg h-88 overflow-hidden">
          <img alt="content" style="width:50vh;height:60vh;margin:auto" src="images/meraujjain/vmart1.png">
        </div>
        <a href="vmart.jsp" class="title-font text-2xl font-medium text-gray-900 mt-6 mb-3">V-Mart</a>
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
function malls()
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