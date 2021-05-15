<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%--form:form 태그용 --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <script src="https://code.jquery.com/jquery-3.6.0.js" crossorigin="anonymous"></script>
<!-- bootstrap js: jquery load 이후에 작성할것.-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!-- bootstrap css -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

<title>강사 신청 승인</title>
    <script>
      // jquery onload 함수
      $(() => {
        $("#approveTeacher")
          .modal()
          .on('hide.bs.modal', e => {
            // modal 비활성화시 (X, 취소, 모달외 영역 클릭)
            location.href = '${pageContext.request.contextPath}';
          });
      //hide.bs.modal은 이벤트 이름
      });
    </script>
    
</head>
<body>
      <!-- Modal시작 -->
      <!-- https://getbootstrap.com/docs/4.1/components/modal/#live-demo -->
      <form:form
        action="${pageContext.request.contextPath}/admin/approveTeacher.do"
        method="post">
      <div class="modal fade" id="approveTeacher" tabindex="-1" role="dialog"
        aria-labelledby="approveTeacherLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <!--폼 -->
           <!-- https://getbootstrap.com/docs/4.1/components/forms/#overview -->
	              <div class="modal-body">
	              <input type="hidden" name="id" value="${id}">
					<p class="text-center mt-5"> 해당 강사신청을 승인하시겠습니까?</p>
	              </div>
					<div class="d-grid gap-2 d-md-flex m-3 justify-content-md-end">
		                <button type="button" class="btn btn-outline-primary m-2" onclick="location.href='${pageContext.request.contextPath}/admin/applyTeacherList.do';">취소</button>
		                <button type="submit" class="btn btn-outline-danger m-2">승인</button>
		                <!-- 취소 버튼 클릭시 강의관리게시판페이지로 이동처리 필요 or 모달창 없앨거면 data-dismiss="modal" 속성 주기  -->
					</div>
              </div>
          </div>
       </div>
    </form:form>
      <!-- Modal 끝-->
</body>
</html>