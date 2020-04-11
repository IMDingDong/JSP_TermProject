<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="thinkonweb.util.ConnectionContext" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="Goods" class="thinkonweb.bean.Goods" scope="request"/>

<html>
<head>
  <title>상품세부내용</title>
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
    <h2>상품세부내용</h2>
    <table width="800px">
      <!-- 정보보호학전공 14107050 임대동 -->
      <%
        Date nowTime = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
        String nowdate = sf.format(nowTime);
        
        Goods.setNum(Integer.parseInt(request.getParameter("num")));
  
        Connection conn = ConnectionContext.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM goods WHERE num=?;");
        pstmt.setInt(1, Goods.getNum());
        ResultSet rs = pstmt.executeQuery();
        
        String rs_title, rs_writedate, rs_image, rs_contents;
        
        while (rs.next()) {
          rs_title = rs.getString("title");
          rs_writedate = rs.getString("writedate");
          rs_image = rs.getString("image");
          rs_contents = rs.getString("contents");
          
          out.println("<tr>");
          out.println("<td><div style='text-align: left;'>상품명 : "+rs_title+"</div></td>");
          out.println("<td><div style='text-align: right;'>작성일 : "+rs_writedate+"</div></td>");
          out.println("</tr>");
          out.println("<tr>");
          out.println("<th colspan='2'>"+rs_title+"</th>");
          out.println("</tr>");
          out.println("<tr>");
          out.println("<td><img src=image/"+rs_image+" width='200px' height='130px'></td>");
          out.println("<td><div style='text-align: left;'>"+rs_contents+"</div>");
          out.println("<div style='text-align: right;'>"+nowdate+"</div></td>");
          out.println("</tr>");
        }
        pstmt.close();
        rs.close();
      %>
      <tr><td colspan='2'><a href='goodslist.jsp'>[목록보기]</a><td/></tr>
    </table>
  </center>
</body>
</html>