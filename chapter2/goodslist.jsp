<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="thinkonweb.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>

<html>
<head>
  <title>��ǰ���</title>
  <style>
    table{
      border-collapse: collapse;
    }
    th {
      background-color: #98FB98;
      border-top: 1px solid;
    }
    th, td {
      padding: 10px;
      text-align: center;
      border-bottom: 1px solid;
    }
  </style>
</head>
<body>
  <center>
    <h2>��ǰ���</h2>
    <table>
      <tr>
        <th>��ȣ</th>
        <th>�̹���</th>
        <th>��ǰ��</th>
        <th>����</th>
        <th>�ۼ���</th>
      </tr>
      <!-- ������ȣ������ 14107050 �Ӵ뵿 -->
      <%
        Connection conn = ConnectionContext.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM goods;");
        ResultSet rs = pstmt.executeQuery();
        
        int rs_num, rs_price;
        String rs_image, rs_title, rs_writedate;
        
        while (rs.next()) {
          rs_num = rs.getInt("num");
          rs_image = rs.getString("image");
          rs_title = rs.getString("title");
          rs_price = rs.getInt("price");
          rs_writedate = rs.getString("writedate");
          out.println("<tr onclick=\"location.href='goodsoutput.jsp?num="+ rs_num +"'\">");
          out.println("<td>"+rs_num+"</td>");
          out.println("<td><img src=image/"+rs_image+" width='200px' height='130px'></td>");
          out.println("<td>"+rs_title+"</td>");
          out.println("<td>"+rs_price+"</td>");
          out.println("<td>"+rs_writedate+"</td>");
          out.println("</tr>");
        }
        pstmt.close();
        rs.close();
      %>
      <tr><td colspan='5'><a href='goodswrite.jsp'>[���]</a><td/></tr>
    </table>
  </center>
</body>
</html>