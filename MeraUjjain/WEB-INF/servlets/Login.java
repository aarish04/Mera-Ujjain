package mera.ujjain.servlets;
import mera.ujjain.dl.*;
import mera.ujjain.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Login extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
AdministratorBean administratorBean;
administratorBean=(AdministratorBean)request.getAttribute("administratorBean");
if(administratorBean==null)
{
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/LoginForm.jsp");
requestDispatcher.forward(request,response);
return;
}
String email=administratorBean.getEmail();
String password=administratorBean.getPassword();
AdministratorDAO administratorDAO=new AdministratorDAO();
try
{
AdministratorDTO administrator=administratorDAO.getByEmail(email);
if(password.equals(administrator.getPassword())==false)
{
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError("Invalid email/password");
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/LoginForm.jsp");
requestDispatcher.forward(request,response);
return;
}
String name=administrator.getName();
long phoneNo=administrator.getPhoneNo();
String workingStatus=administrator.getWorkingStatus();
HttpSession session=request.getSession();
session.setAttribute("email",email);
session.setAttribute("name",name);
session.setAttribute("phoneNo",phoneNo);
session.setAttribute("password",password);
session.setAttribute("workingStatus",workingStatus);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/homepage.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError("Invalid email/password");
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
System.out.println(daoException);
requestDispatcher=request.getRequestDispatcher("/LoginForm.jsp");
requestDispatcher.forward(request,response);
return;
}
}catch(Exception exception)
{
System.out.println(exception);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/ErrorPage.jsp");
try
{
requestDispatcher.forward(request,response);
}catch(Exception e)
{
// do nothing
}
}
}
}