package mera.ujjain.servlets;
import mera.ujjain.dl.*;
import mera.ujjain.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Update extends HttpServlet
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
String name=administratorBean.getName();
long phoneNo=administratorBean.getPhoneNo();
String password=administratorBean.getPassword();
String workingStatus=administratorBean.getWorkingStatus();
AdministratorDTO administratorDTO=new AdministratorDTO();
administratorDTO.setEmail(email);
administratorDTO.setName(name);
administratorDTO.setPhoneNo(phoneNo);
administratorDTO.setPassword(password);
administratorDTO.setWorkingStatus(workingStatus);
AdministratorDAO administratorDAO=new AdministratorDAO();
try
{
administratorDAO.update(administratorDTO);
HttpSession session=request.getSession();
session.setAttribute("email",email);
session.setAttribute("name",name);
session.setAttribute("phoneNo",phoneNo);
session.setAttribute("password",password);
session.setAttribute("workingStatus",workingStatus);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/profile.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError(daoException.getMessage());
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
System.out.println(daoException);
requestDispatcher=request.getRequestDispatcher("/profile.jsp");
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