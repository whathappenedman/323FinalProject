import java.sql.*;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try 
		{
			// 1. Get a connection to database
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "Password!");
			
			// 2. Create a Statement
			Statement myStmt = myConn.createStatement();
			// 3. Execute SQL query
			ResultSet myRs = myStmt.executeQuery("CALL getCourse(\"Ent\");");
			// 4. Process the result set
			while (myRs.next())
			{
				System.out.println(myRs.getString("Name")+ ", " + myRs.getString("Serves")+ ", " + myRs.getString("ingredientsname"));
				
				
			}

		}
		catch (Exception exc){
			exc.printStackTrace();
		}
	}

}
