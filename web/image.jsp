<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="template/header.jsp">
    <c:param name="title" value="Product - View Image"></c:param>
</c:import>
	
	<sql:setDataSource var="ds" dataSource="jdbc/webshop" />
	<sql:query dataSource="${ds }" sql="SELECT * FROM images WHERE id = ? " var="results" >
		<sql:param>${param.image}</sql:param>
	</sql:query>
      
    
    
    
 	<%-- Get the row for this image and format the file name --%>  	
    <c:set scope="page" var="image" value="${results.rows[0]}"/>
	<c:set scope="page" var="imgname" value="${image.stem }.${image.image_extension }"/> 
	
	
	<%-- calculation --%>
	<c:set scope="page" var="average_ranking" value="${image.average_ranking}" />
	<%-- If the user has clicked to rate the image, do the rating. --%>
	<c:if test='${param.action == "rate"}'>
		<c:set scope="page" var="newRating" value="${(image.average_ranking * image.rankings + param.rating)/(image.rankings+1)}"/>
		<c:set scope="page" var="average_ranking" value="${newRating}" />

		<sql:update dataSource="${ds }" sql="update images set average_ranking=? where id=?">
			<sql:param>${newRating}</sql:param>
			<sql:param>${param.image}</sql:param>
		</sql:update>

		<sql:update dataSource="${ds }" sql="update images set rankings=? where id=?">
			<sql:param>${image.rankings+1}</sql:param>
			<sql:param>${param.image}</sql:param>
		</sql:update>
	</c:if>
	
	
	  
	<div id="single-image-show" class="container">
		<div class="title">
			<h2>MODEL : ${image.attribution_name }</h2>
			<p class="text-success">Product ID: ${image.id }</p>
			<hr/>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			
			<div class="thumbnail">
				<img alt="" class="img img-thumbs" src="${pageContext.request.contextPath}/images/products/${imgname}" />
			</div>
		</div>
		<div id="rate-box" class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<div class="clear">
				<h2>Rate it!</h2>
				<h3><span class="label label-danger">Rated : <fmt:formatNumber value="${average_ranking}" maxFractionDigits="2" /></span></h3>	
			</div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<form action='<c:url value="/gallery"/>'  method="POST" >
				<input type="hidden" name="action" value="rate"/>
				<input type="hidden" name="image" value="${image.id }" />
				<ul class="list-group">
					  <li class="list-group-item list-group-item-success"><label for="rbamazing"><input type="radio" id="rbamazing" name="rating" value="5"/>&nbsp;&nbsp; 5 - Amazing</label></li>
					  <li class="list-group-item list-group-item-primary"><label for="rbgood"><input type="radio" id="rbgood" name="rating" value="4" checked="checked" />&nbsp;&nbsp; 4 - Good</label></li>
					  <li class="list-group-item list-group-item-info"><label for="rbaverage"><input type="radio" id="rbaverage" name="rating" value="3"/>&nbsp;&nbsp; 3 - Average</label></li>
					  <li class="list-group-item list-group-item-warning"><label for="rbbad"><input type="radio" id="rbbad" name="rating" value="2"/>&nbsp;&nbsp; 2 - Bad</label></li>
					  <li class="list-group-item list-group-item-danger"><label for="rbhorrendous"><input type="radio" id="rbhorrendous" name="rating" value="1"/>&nbsp;&nbsp; 1 - Horrendous</label></li>
				</ul>
				<button type="submit" class="btn btn-primary">Submit Your Rate</button>
			</form>
		</div>
	</div>

<c:import url="template/footer.jsp"></c:import>