package mera.ujjain.tags;
import java.io.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import javax.servlet.jsp.*;
public class GuardTagHandler extends TagSupport
{
public GuardTagHandler()
{
reset();
}
private void reset()
{
// do nothing
}
public int doStartTag()
{
String email=(String)pageContext.getAttribute("email",PageContext.SESSION_SCOPE);
if(email==null)
{
return super.EVAL_BODY_INCLUDE;
}
return super.SKIP_BODY;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
} 