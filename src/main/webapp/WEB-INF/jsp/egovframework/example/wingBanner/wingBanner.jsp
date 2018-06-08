<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="header">
					<h4 class="title">윙배너도 뭐 그렇게 어렵진 않아요.</h4>
					<p class="category">
						윙배너 확실하게 다져서 갑시다~
					</p>
				</div>
				<div class="content table-responsive table-full-width">
					<table class="table table-hover table-striped" id="targetParent">
						<thead>
							<th>순서</th>
							<th>브랜드코드</th>
							<th>브랜드명칭</th>
						</thead>
						<tbody>
							<c:forEach items="${wingBannerList}" var ="wingBannerList">
								<tr>
									<td><c:out value="${wingBannerList.rownum }"/></td>
									<td><c:out value="${wingBannerList.brandCd }"/></td>
									<td>
										<a href="#" data-key="${wingBannerList.brandCd }">
											<c:out value="${wingBannerList.brandNm }"/>
										</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
