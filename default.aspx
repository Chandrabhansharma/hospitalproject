<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="hospitalproject._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="support/css/bootstrap.css" rel="stylesheet" />
<link href="support/css/font-awesome.css" rel="stylesheet" />
<link href="support/css/Style.css" rel="stylesheet" />
<title>Default Login</title>
 <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
.logo1
{
    float: left;
    padding: 12px 15px;
    font-size: 25px;
    line-height: 21px;
    height: 150px;
    max-width: 220px;
    display: table;
}

    </style>
</head>
    <body>
    <form id="form1" runat="server">
       <section class="vh-100" style="background-color: #73baba;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">

              
                <img src="support/image/login1.jpeg" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

               

                  <div class="d-flex align-items-center mb-3 pb-1">
                      <img src="support/image/logo1.jpeg" alt="Max-width 100%" class="logo1"/>
                    <span class="h1 fw-bold mb-0">HMS</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                  <div class="form-outline mb-4">
                   
                       <asp:TextBox ID="username" required="username" runat="server" placeholder="User Name" CssClass="form-control"></asp:TextBox>

                  </div>

                  <div class="form-outline mb-4">
                       <asp:TextBox ID="password" required="password" TextMode="Password" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>
                    
                  </div>

                  <div class="pt-1 mb-4">
                        <asp:Button ID="login" runat="server" Text="Login" CssClass="btn w-25 btn-success " OnClick="login_Click"/>

                    
                  </div>

           <!--       <a class="small text-muted" href="#!">Forgot password?</a>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="#!"
                      style="color: #393f81;">Register here</a></p>-->
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
               

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
   </form>
    <script src="support/JS/bootstrap.bundle.js"></script>
    <script src="support/JS/bootstrap.js"></script>
</body>

</html>
