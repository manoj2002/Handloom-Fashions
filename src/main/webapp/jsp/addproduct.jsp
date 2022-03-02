<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Product</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div class="form-manu">
            <div class="prod">
                <h2>Product Add</h2>
           </div>
            <form name="manufacturerform"  id="manufacturer" class="input-groupm" action="savemanu" method="post" enctype="multipart/form-data">
                       <input type="text" name="prodname" class="input-field" placeholder="Product Name">
                       <br><br>
                       <input type="text" name="prodplace" class="input-field" placeholder="Manufacture Brand">
                       <br><br>
                       <select name="prodcategory" class="input-field" > 
                           <option>Select Category</option>
                           <option>women</option>
                           <option>men</option>
                           <option>kids</option>
                           <option>footwear</option>
                       </select>
                       <br><br>
                       <input type="text" name="price" class="input-field" placeholder="price">
                       <br><br>
                       <input type="file" name="img" accept="image/*" class="" >
                       <br><br>
                       <button type="submit" class="submit-btn">Upload</button>
            </form>
       </div>
</body>
</html>