<jsp:useBean id='errorBean' scope='request' class='mera.ujjain.beans.ErrorBean'/>
<jsp:useBean id='messageBean' scope='request' class='mera.ujjain.beans.MessageBean'/>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<link rel="stylesheet" type="text/css" href="css/Intro.css">
<meta charset='utf-8'>
<title>Mera Ujjain</title>
</head>
<script src='js/Modal.js'></script>
<script src='jquery/jquery.js'></script>
<script>
$(()=>{
$("button").click(function(){
$("#errorSpan").hide();
});
});
</script>
<body>
<div class='images'>
<center>
<div class="intro"> 
   <h1>Mera Ujjain</h1>
   <p>Ujjain is a city in the Indian state of Madhya Pradesh. It is the fifth largest city in state by population and is the administrative center of Ujjain district and Ujjain division.</p>
   <button onclick='Login()' id='button'>Login</button> &nbsp&nbsp&nbsp&nbsp 
   <button onclick='Register()' id='button'>Register</button><br><br>
   <span id="errorSpan" class='error'>
     
     <jsp:getProperty name='errorBean' property='error'/>
     ${messageBean.message}
   </span>
</div>
</center>
</div>
</body>
</html>