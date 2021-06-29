function Login()
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

var form=document.createElement('form');
form.setAttribute('method','post');
form.setAttribute('action','Login.jsp');

var em=document.createElement('input');
em.setAttribute('type','text');
em.setAttribute('name','email');
em.setAttribute('placeholder','email');
em.className='em';

var pw=document.createElement('input');
pw.setAttribute('type','password')
pw.setAttribute('name','password');
pw.setAttribute('placeholder','password');
pw.className='pw';

var btn=document.createElement('button');
btn.setAttribute('type','submit');
btn.innerHTML="Login";
btn.className='btn';

form.appendChild(em);
form.appendChild(br1);
form.appendChild(pw);
form.appendChild(br2);
form.appendChild(br3);
form.appendChild(btn);
inner_div.appendChild(form);

document.body.appendChild(inner_div);
}


function Register()
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


var form=document.createElement('form');
form.setAttribute('method','post');
form.setAttribute('action','Register.jsp');

var n=document.createElement('input');
n.setAttribute('type','text');
n.setAttribute('name','name');
n.setAttribute('placeholder','Name');
n.className='n';

var phn=document.createElement('input');
phn.setAttribute('type','number');
phn.setAttribute('name','phoneNo');
phn.setAttribute('placeholder','Phone no.');
phn.className='phn';

var em=document.createElement('input');
em.setAttribute('type','text');
em.setAttribute('name','email');
em.setAttribute('placeholder','email');
em.className='r_em';

var pw=document.createElement('input');
pw.setAttribute('type','password')
pw.setAttribute('name','password');
pw.setAttribute('placeholder','password');
pw.className='r_pw';

var ws=document.createElement('input');
ws.setAttribute('type','text')
ws.setAttribute('name','workingStatus');
ws.setAttribute('placeholder','Working Status');
ws.className='r_ws';

var btn=document.createElement('button');
btn.setAttribute('type','submit');
btn.innerHTML="Register";
btn.className='r_btn';

form.appendChild(n);
form.appendChild(br1);
form.appendChild(phn);
form.appendChild(br2);
form.appendChild(em);
form.appendChild(br3);
form.appendChild(pw);
form.appendChild(br4);
form.appendChild(ws);
form.appendChild(br5);
form.appendChild(btn);
form.appendChild(br6);

inner_div.appendChild(form);

document.body.appendChild(inner_div);

}