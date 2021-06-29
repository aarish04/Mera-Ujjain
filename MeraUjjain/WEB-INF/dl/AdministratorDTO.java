package mera.ujjain.dl;
public class AdministratorDTO implements java.io.Serializable,Comparable<AdministratorDTO>
{
private String name;
private long phoneNo;
private String email;
private String password;
private String workingStatus;
public AdministratorDTO()
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
if(!(object instanceof AdministratorDTO)) return false;
AdministratorDTO other=(AdministratorDTO)object;
return this.email.equals(other.email);
}
public int compareTo(AdministratorDTO other)
{
return this.email.compareToIgnoreCase(other.email);
}
public int hashCode()
{
return this.email.hashCode();
}
}