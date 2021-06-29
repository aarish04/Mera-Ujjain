<jsp:useBean id='errorBean' scope='request' class='mera.ujjain.beans.ErrorBean'/>
<jsp:useBean id='messageBean' scope='request' class='mera.ujjain.beans.MessageBean'/>
<%@taglib uri='/WEB-INF/mytags/mutags.tld' prefix='mu' %>
<mu:Module name="PROFILE" />
<jsp:include page='/header.jsp'/>
<body style='background-color:gainsboro'>
<link rel='stylesheet' href='css/profile.css'>
<br>
<br>
<br>
<br>
<br>
<center>
<div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="row container d-flex justify-content-center">
            <div class="col-xl-6 col-md-12">
                <div class="card user-card-full">
                    <div class="row m-l-0 m-r-0">
                        <div class="col-sm-4 bg-c-lite-green user-profile">
                            <div class="card-block text-center text-white">
                                <div class="m-b-25"> <img style='margin:auto' src="https://img.icons8.com/ios-glyphs/2x/test-account.png" class="img-radius" alt="User-Profile-Image"> </div>
                                <h6 class="f-w-600">${name}</h6>
                                <p>${workingStatus}</p> <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="card-block">
                                <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Email</p>
                                        <h6 style='color:darkslategrey' f-w-400">${email}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Phone</p>
                                        <h6 style='color:darkslategrey' f-w-400">${phoneNo}</h6>
                                    </div>
                                </div>

                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600"></h6>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a onclick='editInfo()' style="cursor:pointer" class="m-b-10 f-w-600" >Edit Information</a>
                                    </div>

                                    <div class="col-sm-6">
                                        <a onclick='deleteAccount()' style="cursor:pointer" class="m-b-10 f-w-600" >Remove account</a>
                                    </div>
                                </div>

                                <ul class="social-link list-unstyled m-t-40 m-b-10">
                                    <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="facebook" data-abc="true"><i class="mdi mdi-facebook feather icon-facebook facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="twitter" data-abc="true"><i class="mdi mdi-twitter feather icon-twitter twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="instagram" data-abc="true"><i class="mdi mdi-instagram feather icon-instagram instagram" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
   <span id="errorSpan" class='m-b-10 f-w-600' style='color:white;background:red'>     
     <jsp:getProperty name='errorBean' property='error'/>
   </span>


            </div>
        </div>
    </div>
</div>
</center>
<script>
function editInfo()
{
var outer_div=document.createElement('div');
outer_div.className="ModalMask";
document.body.appendChild(outer_div);

var inner_div=document.createElement('div');
inner_div.className="Modal";

var cross=document.createElement('span');
cross.className="cross";
cross.innerHTML='x';
inner_div.appendChild(cross);

cross.onclick=function(){
outer_div.remove();
inner_div.remove();
}

var br1=document.createElement('br');
var br2=document.createElement('br');
var br3=document.createElement('br');
var br4=document.createElement('br');
var br5=document.createElement('br');
var br6=document.createElement('br');


var form1=document.createElement('form');
form1.setAttribute('method','post');
form1.setAttribute('action','Update.jsp');

var n=document.createElement('input');
n.setAttribute('type','text');
n.setAttribute('name','name');
n.setAttribute('value','${name}');
n.className='n';

var phn=document.createElement('input');
phn.setAttribute('type','number');
phn.setAttribute('name','phoneNo');
phn.setAttribute('value',${phoneNo});
phn.className='phn';

var em=document.createElement('input');
em.setAttribute('type','text');
em.setAttribute('name','email');
em.setAttribute('value','${email}');
em.className='r_em';

var pw=document.createElement('input');
pw.setAttribute('type','hidden');
pw.setAttribute('name','password');
pw.setAttribute('value','${password}');

var ws=document.createElement('input');
ws.setAttribute('type','text')
ws.setAttribute('name','workingStatus');
ws.setAttribute('value','${workingStatus}');
ws.className='r_ws';

var btn1=document.createElement('button');
btn1.setAttribute('type','submit');
btn1.innerHTML="Update";
btn1.className='r_btn';

var form2=document.createElement('form');
form2.setAttribute('method','get');
form2.setAttribute('action','profile.jsp');

var btn2=document.createElement('button');
btn2.setAttribute('type','submit');
btn2.innerHTML="Cancel";
btn2.className='r_btn';


form1.appendChild(n);
form1.appendChild(br1);
form1.appendChild(phn);
form1.appendChild(br2);
form1.appendChild(em);
form1.appendChild(pw);
form1.appendChild(br3);
form1.appendChild(ws);
form1.appendChild(br5);
form1.appendChild(btn1);
form2.appendChild(btn2);
inner_div.appendChild(form1);
inner_div.appendChild(form2);

document.body.appendChild(inner_div);

}
function deleteAccount()
{
var outer_div=document.createElement('div');
outer_div.className="ModalMask";
document.body.appendChild(outer_div);

var inner_div=document.createElement('div');
inner_div.className="RemoveModal";

var cross=document.createElement('span');
cross.className="cross";
cross.innerHTML='x';
inner_div.appendChild(cross);

cross.onclick=function(){
outer_div.remove();
inner_div.remove();
}

var warning=document.createElement('p');
warning.innerHTML="&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspYou no longer will be able to use our services, Are you sure?";
warning.className='warning';

var form1=document.createElement('a');

form1.setAttribute('href','/meraujjain/remove?email=${email}');
form1.className='linkButton';

var btn1=document.createElement('button');
btn1.setAttribute('type','submit');
btn1.innerHTML="Remove";
btn1.className='r_btn';

form1.appendChild(btn1);

var form2=document.createElement('form');
form2.setAttribute('method','get');
form2.setAttribute('action','profile.jsp');

var btn2=document.createElement('button');
btn2.setAttribute('type','submit');
btn2.innerHTML="Cancel";
btn2.className='r_btn';

form2.appendChild(btn2);
inner_div.appendChild(warning);
inner_div.appendChild(form1);
inner_div.appendChild(form2);

document.body.appendChild(inner_div);
}

</script>
<style>
.linkButton
{
font-size: 18px;
background: none;
color: white;
cursor: pointer;
font-weight:bold; 
font-family: 'Trebuchet MS', sans-serif;
}
.RemoveModal
{
width:723px;
min-width:723px;
height:155px;
min-height:155px;
background-color:black;
position:fixed;
top:0;
left:0;
bottom:0;
right:0;
margin:auto;
border:2px solid white;
overflow:auto;
opacity:85%
}
.warning
{
border:2px solid red;
background:red;
font-weight:bold; 
color:white;
}
</style>
</body>
<jsp:include page='/footer.jsp'/>