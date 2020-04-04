import java.sql.*;
public class Error 
{
public static void main(String args[])
{
Connection conn = null;
String url ="jdbc:mysql://localhost/cookbook";
String userName="baduser";
String password="badpass";

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance ();
conn=DriverManager.getConnection (url,userName,password);
System.out.println("Connected");
tryQuery(conn);//Issue a query
}
catch(Exception e)
{
System.err.println("Cannot connect to the server");
System.err.println(e);
if(e instanceof SQLException)//JDBC-specific exception?
{
//e must be cast from Exception to SQLException to 
//access the SQLException-specific methods 
printEXCEPTION(SQLException )e);
}}
finally
{
if(conn !=null)
{
try 
{
con.close();
System.out.println("Disconnected");
}
catch(SQLException e)
{
printException(e);
}
}
}
}
public static void tryQuery(Connection conn)
{
try
{
//issue a simple query
Statement s=conn.createStatement ();
s.execute("Use cookbook");
s.close();
SQLWarning w =conn.getWarnings();
while(w!=null)
{
System.err.println("SQLWarning:" +w.getMessage ());
System.err.println("SQLState:" +w.getSQLState ());
System.err.println("SQLState:" +w.getErrorCode ());
w=w.getNextWarning ();
}}
catch (SQLException e)
{
printException (e);
}}
public static void printException (SQLException e)
{
//print general message,plus any database-specific message

 System.err.println ("SQLException: " + e.getMessage ());
 System.err.println ("SQLState: " + e.getSQLState ());  
 System.err.println ("Vendor code: " + e.getErrorCode ());  } } 


}







}






























}







}















}





}









}
