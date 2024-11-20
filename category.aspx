<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="coffee_shop.category" %>

<!DOCTYPE html>


<head runat="server">
    <title>Catrgory</title>
   

 <link rel="stylesheet" href="css/flaticon.css">
 <link rel="stylesheet" href="css/icomoon.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
 <link rel="stylesheet" href="css/style.css">



    <style>



    
        .gridview-container {
            width: 50%;
            height: 50%;
            overflow: auto;
            margin-left: 50px;
            margin-top: 100px;
        }

        .gridview-style {
            font-family: Arial, sans-serif;
            font-size: 14px;
            color: #F8F8F8;
            border-collapse: collapse;
            width: 100%;
        }

        .gridview-style th,
        .gridview-style td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .gridview-style th {
            background-color: #000000;
            color: #ffffff;
        }

        .gridview-style tr:nth-child(even) {
            background-color: #79674D;
        }

        .gridview-style tr:hover {
            background-color: #82736A;
        }

        .navbar-transparent {
            background-color: rgba(0, 0, 0, 0.5) !important;
            backdrop-filter: blur(10px);
        }

        .container {
            margin-bottom: 10px;
        }

        .navbar-brand,
        .navbar-nav .nav-link {
            color: #ffffff !important;
        }

        .navbar-nav .nav-link:hover {
            color: #b7925f !important;
        }

        .text-white {
            color: white;
        }

        body {
      /*      background-image: url("images/bg_3.jpg");*/
           /* background-size: 1550px 1900px;*/ 
          
         
           background-position:cover;
           /* overflow-x: hidden;*/
            image-rendering: optimizeQuality;
        }
    </style>
</head>
<body>

    <div>
        <nav class="navbar navbar-expand-lg navbar-dark navbar-transparent bg-black">
     <div class="container">
         <a class="navbar-brand text-white" href="#" style="text-align: center;">
             <h5 style="font-size: 24px; margin-left: 50px; font-family: Verdana, sans-serif;">C R I P S</h5>
             <h6 style="font-size: 13px; margin-left: 50px; margin-top: -10px; font-family: 'Trebuchet MS', sans-serif; position: relative;">C A F E</h6>
         </a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <ul class="navbar-nav ms-auto">
                 <li class="nav-item" style="margin-right: 30px; font-family: 'Poppins', sans-serif;">
                     <a class="nav-link active text-white" aria-current="page" href="index.aspx" style="font-size: 14px;">HOME</a>
                 </li>
                 
                 <li class="nav-item" style="margin-right: 30px; font-family: 'Poppins', sans-serif;">
                     <a class="nav-link text-white" href="about.aspx" style="font-size: 13px;">ABOUT</a>
                 </li>

                 <li class="nav-item" style="margin-right: 30px; font-family: 'Poppins', sans-serif;">
                   <a class="nav-link text-white" href="product.aspx" style="font-size: 13px;">PRODUCT</a>
                    </li>

                 <li class="nav-item" style="margin-right: 30px; font-family: 'Poppins', sans-serif;">
                     <a class="nav-link text-white" href="customer.aspx" style="font-size:13px;">CUSTOMER</a>
                 </li>
                 <li class="nav-item" style="margin-right: 30px; font-family: 'Poppins', sans-serif;">
                     <a class="nav-link text-white" href="category.aspx" style="font-size:13px;">CATEGORY</a>
                 </li>
                 <li class="nav-item" style="margin-right: 30px; font-family: 'Poppins', sans-serif;">
                     <a class="nav-link text-white" href="Register.aspx" style="font-size:13px;">REGISTER</a>
                 </li>
                 <li class="nav-item" style="margin-right: 30px; font-family: 'Poppins', sans-serif;">
                     <a class="nav-link text-white" href="login.aspx" style="font-size:13px;">LOGIN</a>
                 </li>
                 <li class="nav-item" style="margin-right: 0px; font-family: 'Poppins', sans-serif;">
                <a class="nav-link text-white" href="logout.aspx" style="font-size:13px;">LOGOUT</a>
              </li>
             </ul>
         </div>
     </div>
 </nav>

    </div>
     

    <section class="home-slider owl-carousel">
  <div class="slider-item" style="background-image: url(images/bg_3.jpg);">
  	<div class="overlay"></div>
    <div class="container">
      <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

        <div class="col-md-8 col-sm-12 text-center ftco-animate">
                
        </div>

      </div>
    </div>
  </div>
</section>

	

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

   
    <form method="post" runat="server">
        <!-- Your form content here -->
       
  <br />
<asp:Label ID="lblcatid" runat="server" Text="Category Id" style="color: #ffffff; font-size: 16px; font-family: Arial, sans-serif; position: absolute; left: 120px; top: 130px;"></asp:Label>
<br />
<asp:TextBox ID="txt_cat_id" runat="server" style="width: 250px; background-color: #F8F8F8; padding: 4px; border: 1px solid black; border-radius: 4px; box-sizing: border-box; position: absolute; left: 150px; top: 180px;" placeholder="Enter your Id"></asp:TextBox>
<br />
<asp:Label ID="lblCatname" runat="server" Text="Category Name" style="color: #ffffff; font-size: 16px; font-family: Arial, sans-serif; position: absolute; left: 120px; top: 270px;"></asp:Label>
<br />
<asp:TextBox ID="txt_cat_name" runat="server" style="width: 250px; background-color: #F8F8F8; padding: 4px; border: 1px solid black; border-radius: 4px; box-sizing: border-box; position: absolute; left: 150px; top: 320px;" placeholder="Category Name"></asp:TextBox>
<br />
<asp:Label ID="lblcatdes" runat="server" Text="DESCRIPTION" style="color: #ffffff; font-size: 15px; font-family: Arial, sans-serif; position: absolute; left: 120px; top: 410px;"></asp:Label>
<br />
<asp:TextBox ID="txt_cat_descripition" runat="server" style="width: 270px; background-color: #F8F8F8; padding: 50px; border: 1px solid black; border-radius: 4px; box-sizing: border-box; position: absolute; left: 150px; top: 460px;"></asp:TextBox>
<br >

        <asp:Button ID="btn_cat_insert" runat="server" Text="Add" CssClass="black-button"
            Style="font-size: 16px; font-family: Arial, sans-serif; font-weight: bold; position: absolute; top: 680px; left: 7%; background-color: #896F51; color: white; border: none; padding: 8px 25px; border-radius: 4px; cursor: pointer;" OnClick="btn_cat_insert_Click" />
        <asp:Button ID="btn_cat_update" runat="server" Text="Edit" CssClass="black-button"
            Style="font-size: 16px; font-family: Arial, sans-serif; font-weight: bold; position: absolute; top: 680px; left: 15%; background-color: #9F9C98; color: white; border: none; padding: 8px 25px; border-radius: 4px; cursor: pointer;" OnClick="btn_cat_update_Click" />
        <asp:Button ID="btn_cat_del" runat="server" Text="Delete" CssClass="black-button"
            Style="font-size: 16px; font-family: Arial, sans-serif; font-weight: bold; position: absolute; top: 680px; left: 23%; background-color: #5E4936; color: white; border: none; padding: 8px 25px; border-radius: 4px; cursor: pointer;" OnClick="btn_cat_del_Click" />







<asp:Label ID="Labcatde" runat="server" Text="Category Detail" style="color: #ffffff; font-size: 20px; font-family: Arial, sans-serif; position: absolute; top: 130px; right: 750px; transform: translateX(-50%);"></asp:Label>


<div class="gridview-container" style="position: absolute; top: 100px; right: 130px;">
   <asp:GridView ID="catgrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_id" CssClass="gridview-style" Width="100%" CellPadding="4" ForeColor="#ffffff" GridLines="None" OnRowCommand="catgrid_RowCommand" >

    <Columns>
   <asp:BoundField DataField="Category_id" HeaderText="Category ID" SortExpression="Category_id" />
   <asp:BoundField DataField="Name" HeaderText="Category Name" SortExpression="Name" />
    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
    </Columns>

    </asp:GridView>
    </div>
    </form>
</body>
</html>
