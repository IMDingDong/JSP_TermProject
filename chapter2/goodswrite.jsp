<%@ page contentType="text/html;charset=euc-kr" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr">
    <title>��ǰ���</title>
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
            alert("��� �ʵ��� ������ �� �Է����ּ���!!!");
            return false;
          }
        }
      </script>
  </head>
  <body>
    <!-- ������ȣ������ 14107050 �Ӵ뵿 -->
    <center>
      <h2>��ǰ���</h2>
        <form action="goodsinput.jsp" name="frm" method="POST" enctype="multipart/form-data" onsubmit="return check_onsubmit();">
        <table>
          <tr>
            <th>��ǰ��</th>
            <td>
              <input type="text" name="title" size=40><br/>
            </td>
          </tr>
          <tr>
            <th>����</th>
            <td>
              <input type="text" name="price" size=15><br/>
            </td>
          </tr>
          <tr>
            <th>��ǰ�ڵ�</th>
            <td>
              <input type="text" name="code" size=40><br/>
            </td>
          </tr>
          <tr>
            <th>�������</th>
            <td>
              <input type="file" name="image"><br/>
            </td>
          </tr>
          <tr>
            <th>��ǰ ���� ����</th>
            <td>
              <textarea cols=70 rows=15 name="contents"></textarea><br/>
            </td>
          </tr>
        </table>
        <br/>
        <p>
        <input type="reset" value="�ٽ� �ۼ�" name="resetbtn">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="���" name="submitbtn">
      </form>
    </center>
  </body>
</html>