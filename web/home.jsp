<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:import url="template/header.jsp">
    <c:param name="title" value="Product - Gallery"></c:param>
</c:import>
	
	
	
	<sql:setDataSource var="ds" dataSource="jdbc/webshop"  />
	
	<sql:query dataSource="${ds }" sql="SELECT * FROM images ORDER BY ID" var="results" />

        
	<div class="row">
		<div id="images-gallery">
		    <c:forEach var="image" items="${results.rows }">
		    	<c:set scope="page" var="imgname" value="${image.stem }.${image.image_extension }"/>
				<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
				  <a href='<c:url value="/gallery?action=image&image=${image.id }" />' class="thumbnail">
				    <img alt="" class="img img-thumbs" src="${pageContext.request.contextPath}/images/products/${imgname}" />
				  </a>
				</div>	
		    </c:forEach>
		</div>
	</div>

<c:import url="template/footer.jsp"></c:import>