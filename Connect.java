import java.sql.*;
public class Connect
{
public static void main(String args[])
{
Connection conn = null;
String url="jdbc:mysql://localhost/cookbook";
String userName="cbuser";
String userName="cbpass";
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance ();
conn = DriverManager.getConnection (url,UserName,password);
System.out.println("Connected");
}
catch (Exception e)
{
   System.err.println("Cannot connect to the server");
   System.exit(1);
  }
  if (conn != null)
  {
  try
  {
  conn.close ();
  System.out.println ("Disconnected");
  }
  catch (Exception e) {/* ignore class errors */}
  }}}
  
  
  
  
  
  
  
  
  
  
  
  
  
