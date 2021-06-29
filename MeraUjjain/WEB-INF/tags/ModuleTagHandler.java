package mera.ujjain.tags;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
public class ModuleTagHandler extends TagSupport
{
private String name;
public void setName(String name)
{
this.name=name;
}
public String getName()
{
return this.name;
}
public ModuleTagHandler()
{
reset();
}
private void reset()
{
this.name="";
}
public int doStartTag()
{
if(name=="HOME")
{
pageContext.setAttribute("module",0,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("HOME",0,pageContext.REQUEST_SCOPE);
}
if(name=="PROMINENTPLACES")
{
pageContext.setAttribute("module",1,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("PROMINENTPLACES",1,pageContext.REQUEST_SCOPE);
}
if(name=="EDUCATION")
{
pageContext.setAttribute("module",2,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("EDUCATION",2,pageContext.REQUEST_SCOPE);
}
if(name=="MALLS")
{
pageContext.setAttribute("module",3,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("MALLS",3,pageContext.REQUEST_SCOPE);
}
if(name=="HOTELS")
{
pageContext.setAttribute("module",4,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("HOTELS",4,pageContext.REQUEST_SCOPE);
}
if(name=="PROFILE")
{
pageContext.setAttribute("module",5,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("PROFILE",5,pageContext.REQUEST_SCOPE);
}

return super.SKIP_BODY;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}