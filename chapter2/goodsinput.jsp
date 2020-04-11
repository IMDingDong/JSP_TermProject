<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="thinkonweb.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.io.File" %>
<%@ page import="thinkonweb.util.*" %>
<jsp:useBean id="Goods" class="thinkonweb.bean.Goods" scope="request"/>

<%
	Date nowTime = new Date();
  SimpleDateFormat sf = new SimpleDateFormat("yyyy³â MM¿ù ddÀÏ a hh:mm:ss");
  String writedate = sf.format(nowTime);

  String savePath = application.getRealPath("/chapter2/image");
  int sizeLimit = 1024*1024*15;

  MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit,"utf-8",new DefaultFileRenamePolicy());
  
  File file = multi.getFile("image");
  String filename = file.getName();
  
  Goods.setTitle(multi.getParameter("title"));
  Goods.setPrice(Integer.parseInt(multi.getParameter("price")));
  Goods.setCode(multi.getParameter("code"));
  Goods.setImage(filename);
  Goods.setContents(multi.getParameter("contents"));
  Goods.setWritedate(writedate);
  
  Connection conn = ConnectionContext.getConnection();
  PreparedStatement pstmt = conn.prepareStatement("INSERT INTO goods (title, price, code, image, contents, writedate) VALUES (?, ?, ?, ?, ?, ?);");
  pstmt.setString(1, Goods.getTitle());
  pstmt.setInt(2, Goods.getPrice());
  pstmt.setString(3, Goods.getCode());
  pstmt.setString(4, Goods.getImage());
  pstmt.setString(5, Goods.getContents());
  pstmt.setString(6, Goods.getWritedate());
  pstmt.executeUpdate();
  pstmt.close();
  
  response.sendRedirect("goodslist.jsp");
%>