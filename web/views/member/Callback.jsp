<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  //var naver_id_login = new naver_id_login("uESYdXxeCHDQJ1wuF95U", "http://localhost:9090/KH-SEMI-Carbokdong/views/member/Callback.jsp");
  var naver_id_login = new naver_id_login("uESYdXxeCHDQJ1wuF95U", "https://rclass.iptime.org/21PM_Carbokdong/views/member/Callback.jsp");
  // 접근 토큰 값 출력
  /* alert(naver_id_login.oauthParams.access_token); */
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
	const email=naver_id_login.getProfileData('email');
    const nickname=naver_id_login.getProfileData('nickname');
    const name=naver_id_login.getProfileData('name');
    const gender=naver_id_login.getProfileData('gender'); //F:여 M:남 U:확인불가
    location.assign("<%=request.getContextPath()%>/naverLogin?email="+email+"&nickname="+nickname+"&name="+name+"&gender="+gender);
    opener.parent.location.replace("<%=request.getContextPath()%>/");
  }
</script>
</body>
</html>