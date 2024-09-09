<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebV1.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chu vi tam giác</title>
    <style>
       
        body {
            background-color: dimgray;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            background-color: white;
            border-radius: 20px;
            padding: 30px;
            width: 650px;
            height: 400px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start; 
            align-items: center; 
        }
        .boxtwo{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-content: center;
            gap: 20px;
            flex-basis: 50%;
        }
       
        .title {
            font-size: 20px;
            font-weight: bold;
            color: black;
            background-color: white;
            padding: 10px 20px;
            border-radius: 10px;
            border: 2px solid black;
            margin-bottom: 20px;
        }

        
        .content-section {
            display: flex;
            width: 100%;
            justify-content: space-evenly; 
            align-items: center;
        }

       
        .input-section {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-content: center;
            gap: 15px;
            flex-basis: 50%; 
        }

        .input-field {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid black;
            width: 150px;
            height:20px;
        }

        .readonly {
            background-color: #e0e0e0;
            color: black;
        }

       
        .button {
            padding: 0px;
            background-color: white;
            border: 2px solid black;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.7s ease, transform 0.7s ease;
            width: 40px;
            height:40px;
            font-size:10px;
            text-align:center;
        }

        .button:hover {
            background-color: black;
            color: white;
        }

       
        .image-section {
            flex-basis: 60%; 
            display: flex;
            justify-content: center;
            gap: 0px;
            
            margin-right: 130px;
        }

        .image-section img {
            max-width: 100%;
            max-height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <!-- box-->
            <div class="box">
                <!-- title  -->
                <div class="title">CALC PERIMETER OF TRIANGLE</div>
                                
                <div class="content-section">
                    
                    
                    <!-- img ben phai -->
                    <div class="image-section">
                        <img src="pfml.png" alt="Công thức tính chu vi tam giác" />
                    </div>
                    
                    
                    <!-- input ben trai -->
                    <div class="input-section">
                        <asp:TextBox id="txtA" runat="server" CssClass="input-field" placeholder="A" />
                        <asp:TextBox id="txtB" runat="server" CssClass="input-field" placeholder="B" />
                        <asp:TextBox id="txtC" runat="server" CssClass="input-field" placeholder="C" />

                        <div class="boxtwo">
                        <asp:TextBox id="txtP" runat="server" CssClass="input-field readonly" placeholder="P" ReadOnly="true" />
                        <asp:Button id="button" runat="server" CssClass="button" OnClick="btnTinh_Click" Text="CALC" />
                        </div>
                    
                    </div>

                    
                </div>

            </div>
        </div>
    </form>
</body>
</html>
