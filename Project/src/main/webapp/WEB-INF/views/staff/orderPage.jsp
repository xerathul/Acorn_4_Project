<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/staff/orderPage.jsp</title>
<jsp:include page="../../../resources/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../resources/include/navbar.jsp">
	<jsp:param value="cart" name="thisPage"/>
</jsp:include>
<div class="container">
	<h1>구매 페이지</h1>	
	<table class="table">
      	<thead>
        	<tr>
          		<th scope="col">번호</th>
          		<th scope="col">상품 사진</th>
          		<th scope="col">상품명</th>
          		<th scope="col">수량</th>
          		<th scope="col">가격</th>
          		<th scope="col">총 가격</th>          		
        	</tr>
      	</thead>
      	<tbody>
      		<c:set var="sum" value="0" />
	      		<c:forEach var="tmp" items="${list }" varStatus="status">
		         	<tr>
			            <td>${status.count }</td>
			            <td><img src="${pageContext.request.contextPath }${tmp.imagePath}"/></td>
			            <td>${tmp.productId }</td>
			            <td>${tmp.amount }</td>
			            <td>${tmp.price }</td>
			            <td>${tmp.totalPrice }</td>
		         	</tr>
		         	<c:set var="sum" value="${sum + (tmp.totalPrice)}" />			
	      		</c:forEach>
	      	
		</tbody>
		<tfoot>
			<tr>
				<td>총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원</td>
			</tr>
		</tfoot>
   	</table>
	


	<div class="container">
		<form action="${pageContext.request.contextPath }/private/orderComplete.do" method="post" enctype="multipart/form-data">
		    
			<input type="hidden" name="totalPrice" value="${sum}" />
			<input type="hidden" name="userId" value="${user.id}" />
		    
		  
		  	<div>
			   	<label class="control-label" for="tel" class="form-label">연락처</label>
			   	<input class="form-control" type="text" name="tel" id="tel" required/>
		  	</div>
		  
		  	<div>
			   	<label class="control-label" for="userPostal" class="form-label">우편번호</label>
			   	<input class="form-control" type="text" name="userPostal" id="userPostal" required/>
		  	</div>
		  
		  	<div>
			   	<label class="control-label" for="userAddr" class="form-label">주소</label>
			   	<input class="form-control" type="text" name="userAddr" id="userAddr" required/>
		  	</div>
		  
		  	<div>
			   	<label class="control-label" for="userAddrDetail" class="form-label">상세 주소</label>
			   	<input class="form-control" type="text" name="userAddrDetail" id="userAddrDetail" required/>
		  	</div>
		  		<br />
		<figure class="text-end">
			   	<button class="btn btn-outline-secondary" type="submit">주문</button>
			   	<button class="btn btn-outline-secondary" type="reset" id="reset">취소</button> 
	  	</figure>
		</form> 
	</div>
</body>
<jsp:include page="../../../resources/include/footer.jsp">
	<jsp:param value="home" name="thisPage"/>
</jsp:include>
<script>
	document.querySelector("#reset").addEventListener("click",function(){
		location.href="${pageContext.request.contextPath }/cart/carthome.do";	
	});
</script>
</html>