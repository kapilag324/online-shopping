<%@ page import="java.sql.*,databaseconnection.*"%>

	
	
	
		
<% 		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;

	
	String ccode=request.getParameter("code");
	int xcode=Integer.parseInt(ccode);

	
			
         try      
	{
	    con=databasec.getconnection();
	    st=con.createStatement();
	    String sql="delete from adminmsgs where ecode="+xcode;
 	    int x=st.executeUpdate(sql);

	   if(x!=0)
	     {
		response.sendRedirect("msgbox.jsp");		
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
