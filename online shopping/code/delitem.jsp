<%@ page import="java.sql.*,databaseconnection.*"%>

	
	
	
		
<% 		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;

	
	String name=request.getParameter("name");

	out.print(name);
			
         try      
	{
	    con=databasec.getconnection();
	    st=con.createStatement();
	    String sql="delete from prodetails where pro='"+name+"'";
 	    int x=st.executeUpdate(sql);

	   if(x!=0)
	     {
		response.sendRedirect("itemlist.jsp");		
	    }
	   else
	   {
		out.println("error in server.. try after some time... <a href=\"tlmailview.jsp\">Back</a>");
	   }
	   
	}catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
