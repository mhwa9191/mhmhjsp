<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my my jsp file</title>
</head>
<body>
<h3>goodsboardReg</h3>
<form action="goodsboardRegPro.jsp" method="post">
	<dl>
		<dt>상품명</dt>	
		<dt>
			<input type="text" name="gname" required/>
		</dt>
	</dl>
	<dl>
		<dt>상품가격</dt>
		<dt>
			<input type="text" name="gprice" required/>
		</dt>
	</dl>
	<div>
		<textarea name="gdsc" id="gdescribe" class="gdescribe">상품설명</textarea>
	</div>
	<input type="submit" value="save" />
	<input type="button" value="cancel" class="cancel" />
</form>

</body>
</html>
