<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>NGO Recieve</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
  body{
		color: #fff;
		background: #359899;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 41px;
		background: #f2f2f2;
		box-shadow: none !important;
		border: none;
	}
	.form-control:focus{
		background: #e2e2e2;
	}
    .form-control, .btn{
        border-radius: 3px;
    }
	.signup-form{
		width: 390px;
		margin: 30px auto;
	}
	.signup-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form h2 {
		color: #333;
		font-weight: bold;
        margin-top: 0;
    }
    .signup-form hr {
        margin: 0 -30px 20px;
    }
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}
    .signup-form .btn{
        font-size: 16px;
        font-weight: bold;
		background: #F1C40F;
		border: none;
		min-width: 140px;
    }
	.signup-form .btn:hover, .signup-form .btn:focus{
		background: #2389cd;
        outline: none;
	}
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
	.signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #3598dc;
		text-decoration: none;
	}
	.signup-form form a:hover{
		text-decoration: underline;
	}
    .signup-form .hint-text {
		padding-bottom: 15px;
		text-align: center;
    }
    select {
    width:250px;
    padding:10px;
    margin-top:20px;
    font-family:Cursive;
    line-height:1;
    border-radius:5px;
    color:#black;
    font-size:15px;
    }
    select:hover {
    color:#555555
    }
</style>
</head>
<body>
<p align="right"><div class="text-right"><form action="logout"><input type="submit" value="Logout" class="btn btn-primary btn-lg"> </form></div></p>
  <div class="signup-form">
    <form action="recieve2.jsp" method="post">
	<div class="form-group">
    <select name="pincode" id="pincode" >
    <option>Find PinCode</option>
    <%
    try{
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","vcepro","system");

      PreparedStatement ps=con.prepareStatement("select PINCODE from TABLETS");
      ResultSet rs=ps.executeQuery();
      while(rs.next())
      {
        out.print("<option value=\""+rs.getInt(1)+"\">"+rs.getInt(1)+"</option><br>");
      }
      }
    catch(Exception e){out.println("Invalid Password");}
    %>

        </div>
<div class="form-group">
<input type="hidden" value="1" name="page">
            <input type="submit" value="Find">
        </div>
</form>
</div>
</body>
</html>
