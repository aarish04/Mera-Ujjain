package mera.ujjain.beans;
public class AdministratorBean implements java.io.Serializable,Comparable<AdministratorBean>
{
private String name;
private long phoneNo;
private String email;
private String password;
private String workingStatus;
public AdministratorBean()
{
this.name="";
this.phoneNo=0;
this.email="";
this.password="";
this.workingStatus="";
}
public void setName(String name)
{
this.name=name;
}
public String getName()
{
return this.name;
}
public void setPhoneNo(long phoneNo)
{
this.phoneNo=phoneNo;
}
public long getPhoneNo()
{
return this.phoneNo;
}
public void setEmail(String email)
{
this.email=email;
}
public String getEmail()
{
return this.email;
}
public void setPassword(String password)
{
this.password=password;
}
public String getPassword()
{
return this.password;
}
public void setWorkingStatus(String workingStatus)
{
this.workingStatus=workingStatus;
}
public String getWorkingStatus()
{
return this.workingStatus;
}
public boolean equals(Object object)
{
if(!(object instanceof AdministratorBean)) return false;
AdministratorBean other=(AdministratorBean)object;
return this.email.equals(other.email);
}
public int compareTo(AdministratorBean other)
{
return this.email.compareToIgnoreCase(other.email);
}
public int hashCode()
{
return this.email.hashCode();
}
}