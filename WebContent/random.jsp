
<html>
  <HEAD>
    <TITLE>Random Numbers</TITLE>
  </HEAD>
  <BODY>
    
    <H3 ALIGN="CENTER">
      Ramdom number from 0 to 16 : 
      <FONT COLOR="RED">
      <% for(int i = 0; i < 5; i+=1) { %>
      
      <% if(Math.random() == 10)
      
      
      %>
        <%= (int) (Math.random() * 16) %>
        <% } %>
      </FONT>
    </H3>
    
    
    
    <H4 ALIGN="CENTER">Refresh the page to see if the number changes...</H4>
  </BODY>
</HTML>
