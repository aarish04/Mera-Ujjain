package mera.ujjain.servlets;
import mera.ujjain.dl.*;
import mera.ujjain.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Register extends HttpServlet
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
String name=administratorBean.getName();
long phoneNo=administratorBean.getPhoneNo();
String email=administratorBean.getEmail();
String password=administratorBean.getPassword();
String workingStatus=administratorBean.getWorkingStatus();
AdministratorDTO administratorDTO=new AdministratorDTO();
administratorDTO.setName(name);
administratorDTO.setPhoneNo(phoneNo);
administratorDTO.setEmail(email);
administratorDTO.setPassword(password);
administratorDTO.setWorkingStatus(workingStatus);
AdministratorDAO administratorDAO=new AdministratorDAO();
try
{
administratorDAO.add(administratorDTO);
MessageBean messageBean=new MessageBean();
messageBean.setMessage("Registered successfully");
request.setAttribute("messageBean",messageBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/LoginForm.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError(daoException.getMessage());
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