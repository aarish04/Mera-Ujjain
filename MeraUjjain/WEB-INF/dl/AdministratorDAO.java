package mera.ujjain.dl;
import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class AdministratorDAO
{
public static boolean valEmail(String input)
{
String emailRegex="^(.+)@(.+)$";
Pattern emailPat=Pattern.compile(emailRegex,Pattern.CASE_INSENSITIVE);
Matcher matcher=emailPat.matcher(input);
return matcher.matches();
}
public void add(AdministratorDTO administratorDTO) throws DAOException
{
try
{
boolean isNum=false;
String name=administratorDTO.getName();
if(name.length()==0)
{
throw new DAOException("Invalid name");
}
for(int i=0;i<name.length();i++)
{
if(name.charAt(i)>='0' && name.charAt(i)<='9')
{
isNum=true;
}
if(isNum)
{
throw new DAOException("Invalid name");
}
}
long phoneNo=administratorDTO.getPhoneNo();
int length=String.valueOf(phoneNo).length();
if(length!=10 || length==0)
{
throw new DAOException("Invalid phone no.");
}
String email=administratorDTO.getEmail();
if(email.length()==0)
{
throw new DAOException("Invalid email id.");
}
boolean isEmailCorrect=valEmail(email);
if(!isEmailCorrect)
{
throw new DAOException("Invalid email id.");
}
String password=administratorDTO.getPassword();
if(password.length()==0)
{
throw new DAOException("Invalid password");
}
String workingStatus=administratorDTO.getWorkingStatus();
if(workingStatus.length()==0)
{
throw new DAOException("Invalid Working Status");
}
for(int i=0;i<workingStatus.length();i++)
{
if(workingStatus.charAt(i)>='0' && workingStatus.charAt(i)<='9')
{
isNum=true;
}
if(isNum)
{
throw new DAOException("Invalid Working Status");
}
}

Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement;
preparedStatement=connection.prepareStatement("select * from administrator where email=?");
preparedStatement.setString(1,email);
ResultSet resultSet=preparedStatement.executeQuery();
if(resultSet.next()==true)
{
resultSet.close();
preparedStatement.close();
connection.close();
throw new DAOException("Email : "+email+" already in use.");
}
resultSet.close();
preparedStatement.close();
preparedStatement=connection.prepareStatement("select * from administrator where phone_no=?");
preparedStatement.setLong(1,phoneNo);
resultSet=preparedStatement.executeQuery();
if(resultSet.next()==true)
{
resultSet.close();
preparedStatement.close();
connection.close();
throw new DAOException("Phone no. : "+phoneNo+" already in use.");
}
resultSet.close();
preparedStatement.close();
preparedStatement=connection.prepareStatement("insert into administrator (name,phone_no,email,password,working_status) values(?,?,?,?,?)");
preparedStatement.setString(1,name);
preparedStatement.setLong(2,phoneNo);
preparedStatement.setString(3,email);
preparedStatement.setString(4,password);
preparedStatement.setString(5,workingStatus);
preparedStatement.executeUpdate();
resultSet.close();
preparedStatement.close();
connection.close();
}catch(SQLException sqlException)
{
throw new DAOException(sqlException.getMessage());
}
}
public void delete(String email) throws DAOException
{
try
{
Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement;
preparedStatement=connection.prepareStatement("delete from administrator where email=?");
preparedStatement.setString(1,email);
preparedStatement.executeUpdate();
preparedStatement.close();
connection.close();
}catch(SQLException sqlException)
{
throw new DAOException(sqlException.getMessage());
}
}
public AdministratorDTO getByEmail(String email) throws DAOException
{
try
{
Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement;
preparedStatement=connection.prepareStatement("select * from administrator where email=?");
preparedStatement.setString(1,email);
ResultSet resultSet;
resultSet=preparedStatement.executeQuery();
if(resultSet.next()==false)
{
resultSet.close();
preparedStatement.close();
connection.close();
throw new DAOException("Invalid email : "+email);
}
AdministratorDTO administratorDTO=new AdministratorDTO();
administratorDTO.setEmail(resultSet.getString("email").trim());
administratorDTO.setPassword(resultSet.getString("password").trim());
administratorDTO.setName(resultSet.getString("name").trim());
administratorDTO.setPhoneNo(resultSet.getLong("phone_no"));
administratorDTO.setWorkingStatus(resultSet.getString("working_status").trim());
resultSet.close();
preparedStatement.close();
connection.close();
return administratorDTO;
}catch(SQLException sqlException)
{
throw new DAOException(sqlException.getMessage());
}
}

public void update(AdministratorDTO administratorDTO) throws DAOException
{
try
{
boolean isNum=false;
String actualPassword=administratorDTO.getPassword();
String name=administratorDTO.getName();
if(name.length()==0)
{
throw new DAOException("Invalid name");
}
for(int i=0;i<name.length();i++)
{
if(name.charAt(i)>='0' && name.charAt(i)<='9')
{
isNum=true;
}
if(isNum)
{
throw new DAOException("Invalid name");
}
}
String email=administratorDTO.getEmail();
if(email.length()==0)
{
throw new DAOException("Invalid email id.");
}
boolean isEmailCorrect=valEmail(email);
if(!isEmailCorrect)
{
throw new DAOException("Invalid email id.");
}
Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement;
preparedStatement=connection.prepareStatement("select password from administrator where email=? and password!=?");
preparedStatement.setString(1,email);
preparedStatement.setString(2,actualPassword);
ResultSet resultSet=preparedStatement.executeQuery();
if(resultSet.next()==true)
{
resultSet.close();
preparedStatement.close();
connection.close();
throw new DAOException("Email : "+email+" already in use.");
}
long phoneNo=administratorDTO.getPhoneNo();
int length=String.valueOf(phoneNo).length();
if(length!=10 || length==0)
{
throw new DAOException("Invalid phone no.");
}
resultSet.close();
preparedStatement.close();
preparedStatement=connection.prepareStatement("select password from administrator where phone_no=? and password!=?");
preparedStatement.setLong(1,phoneNo);
preparedStatement.setString(2,actualPassword);
resultSet=preparedStatement.executeQuery();
if(resultSet.next()==true)
{
resultSet.close();
preparedStatement.close();
connection.close();
throw new DAOException("Phone no. : "+phoneNo+" already in use.");
}
resultSet.close();
preparedStatement.close();
String workingStatus=administratorDTO.getWorkingStatus();
if(workingStatus.length()==0)
{
throw new DAOException("Invalid Working Status");
}
for(int i=0;i<workingStatus.length();i++)
{
if(workingStatus.charAt(i)>='0' && workingStatus.charAt(i)<='9')
{
isNum=true;
}
if(isNum)
{
throw new DAOException("Invalid Working Status");
}
}
preparedStatement=connection.prepareStatement("update administrator set name=?,email=?,phone_no=?,working_status=? where password=?");
preparedStatement.setString(1,name);
preparedStatement.setString(2,email);
preparedStatement.setLong(3,phoneNo);
preparedStatement.setString(4,workingStatus);
preparedStatement.setString(5,actualPassword);
preparedStatement.executeUpdate();
preparedStatement.close();
connection.close();
}catch(SQLException sqlException)
{
throw new DAOException(sqlException.getMessage());
}
}
}