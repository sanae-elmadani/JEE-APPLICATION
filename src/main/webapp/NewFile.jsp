<%@page import="web.CreditModel" %>


<%
CreditModel model=(CreditModel)request.getAttribute("creditModel");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
  form {
  display: flex;
  flex-direction: column;
  align-items: center;
}  
input {
  width: 100%;
  padding: 0.5rem;
  margin-top: 0.5rem;
  border-radius: 5px;
  border: none;
  background-color: #f5f5f5;
} 
button[type="submit"] {
  margin-top: 1rem;
  padding: 0.5rem 1rem;
  border-radius: 5px;
  border: none;
  background-color: #007bff;
  color: #fff;
  cursor: pointer;
}
h1 {
  font-size: 2em;
  font-weight: bold;
  text-align: center;
  color: #333;
  margin-top: 1em;
  margin-bottom: 1em;
}
.result {
  background-color: #f5f5f5;
  padding: 10px;
  font-size: 1.2rem;
  text-align: center;
  border-radius: 5px;
  margin: 1rem;
}

 
 </style>
 
 <h1>The sum of two numbers  </h1>
<form method="post" action="MyServlet" ">
  <label>First number</label>
  <input type="text"  name="a"  value="<%=model.getA()%>">
  <label >Second number</label>
  <input type="text"  name="b" value="<%=model.getB()%>">
 
 

  <button type="submit">calculer</button>
</form>
<div class="result">Le résultat est <%=model.getC()%></div>

  
</body>
</html>