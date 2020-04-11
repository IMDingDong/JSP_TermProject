<%@ page contentType="text/html;charset=euc-kr" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr">
    <title>상품등록</title>
      <style>
        table{
          border-collapse: collapse;
        }
        th {
          text-align: center;
          background-color: #98FB98;
        }
        td {
          text-align: left;
        }
        th, td {
          padding: 10px;
          border-top: 1px solid;
          border-bottom: 1px solid;
        }
      </style>
      <script>
        function check_onsubmit() {
          var frm = document.frm;
          if(frm.title.value=="" || frm.price.value=="" || frm.price.code=="" || frm.image.value=="" || frm.contents.value=="") {
            alert("모든 필드의 정보를 다 입력해주세요!!!");
            return false;
          }
        }
      </script>
  </head>
  <body>
    <!-- 정보보호학전공 14107050 임대동 -->
    <center>
      <h2>상품등록</h2>
        <form action="goodsinput.jsp" name="frm" method="POST" enctype="multipart/form-data" onsubmit="return check_onsubmit();">
        <table>
          <tr>
            <th>상품명</th>
            <td>
              <input type="text" name="title" size=40><br/>
            </td>
          </tr>
          <tr>
            <th>가격</th>
            <td>
              <input type="text" name="price" size=15><br/>
            </td>
          </tr>
          <tr>
            <th>상품코드</th>
            <td>
              <input type="text" name="code" size=40><br/>
            </td>
          </tr>
          <tr>
            <th>사진등록</th>
            <td>
              <input type="file" name="image"><br/>
            </td>
          </tr>
          <tr>
            <th>상품 세부 내용</th>
            <td>
              <textarea cols=70 rows=15 name="contents"></textarea><br/>
            </td>
          </tr>
        </table>
        <br/>
        <p>
        <input type="reset" value="다시 작성" name="resetbtn">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="등록" name="submitbtn">
      </form>
    </center>
  </body>
</html>