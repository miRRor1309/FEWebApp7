<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhTien.aspx.cs" Inherits="FEWebApp7.TinhTien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TÍNH TIỀN HÀNG

    </title>
    <script language="JavaScript">
        function CalculatePrice() {
            var cl = parseFloat(document.getElementById("SoLuong").value);
            var dg = parseFloat(document.getElementById("DonGia").value);
            window.document.getElementById("ThanhTien").value = sl * dg;
        }
        function CalculatePrice2() {
            var cl = parseFloat(document.getElementsByName("SoLuong").value);
            var dg = parseFloat(document.getElementsByName("DonGia").value);
            window.document.getElementById("ThanhTien").value = sl * dg;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <h1>Tính tiền</h1>
        <div>
            Đơn giá: <input type="number" id="DonGia" name="DonGia" /><br />
            Số lượng: <input type="number" id ="SoLuong" name="SoLuong"
                <%---onkeyup="ThanhTien.value= parseFloat(DonGia.value) * parseFloat(SoLuong.value)" /><br />--%>
                <%--onkeyup="CaculatePrice();"--%>
                onkeyup="CalculatePrice2();"  
                />
            <br />
            Thành Tiền: <input type="number" id="ThanhTien" name="ThanhTien" /><br />
        </div>
    </form>
</body>
</html>
