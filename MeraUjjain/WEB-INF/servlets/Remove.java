package mera.ujjain.servlets;
import mera.ujjain.dl.*;
import mera.ujjain.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Remove extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
String email=request.getParameter("email");
AdministratorDAO administratorDAO=new AdministratorDAO();
try
{
administratorDAO.delete(email);
MessageBean messageBean=new MessageBean();
messageBean.setMessage("Account Deleted");
request.setAttribute("messageBean",messageBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/LoginForm.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError("Something went wrong");
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