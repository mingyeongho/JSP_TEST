# JSP_TEST
학교 JSP 디렉토리

# JSP의 구성요소
* directives(지시어) : JSP 파일의 속성을 기술하는 JSP 문법
  page, include, taglib-JSTL 등
* script elements(스크립트 요소) : JSP 스크립트를 구성하는 요소
  주석문, [중요] 스크립트릿(scriptlet), 표현식(expression)-EL, 선언(declaration)
* 내장 객체(Implicit Object) : JSP가 기본적으로 제공하는 객체로 인스턴스 생성없이 사용 가능
  request, response, out, page, session, application 등
* action tag(액션 태그) : JSP 문서 사이의 제어의 이동, 자바 빈즈 컴포넌트의 사용을 위한 태그

# directives (지시어)
- [중요] page : JSP 페이지의 전반적인 정보를 설정할 때 사용
- include : 현재 JSP 파일에 다른 HTML이나 JSP문서를 포함하기 위한 기능 제공
- taglib : 개발자가 custom tag를 사용하거나 framework에서 제공하는 태그를 이용할 때 사용

- 형식 : <%@지시어 속성1="값1" ... %>

# page directives
- <%@page attr1="value1" attr2="value2" %>
- JSP 페이지 맨 앞에 위치 : JSP페이지를 컨테이너에서 처리하는데 필요한 각종 속성을 기술
- Attribute : contentType, language, pageEncoding 등
- 속성이 많을 경우  여러 줄에 걸쳐 써도 됨.
- - info : JSP 문서에 대한 설명이나 버전, 생략 가능
- - language : JSP에서 사용할 언어, default = java, 생략 가능
- - [중요] contentType : 현재 JSp 문서의 MIME을 지정, 문서의 처리 결과를 브라우저에 출력할 때 사용할 문자 인코딩을 지정, default = "text/html; charset=EUC-KR"
- - pageEncoding : tomcat 컨테이너에 전달할 인코딩 방식을 설정, Java는 기본적으로 유니코드 사용, JSP --pageEncoding--> Servlet
- - - [중요]contentType과 pageEncoding의 처리 : 컨테이너는 먼저 pageEncoding에 정의된 인코딩을 찾음, pageEncoding이 없을 경우 contentType속송을 찾음, 두 인코딩은 통일되는게 좋음(utf-8)
- - - - JSP 문서의 한글 처리 : 1. server.xml에서 정의 2. 각 JSP 파일, page 지시어의 pageEncoding 속성에서 정의 3. 각 JSP 파일, page 지시어의 contentType 속성에서 정의
- - import : JSP 프로그램 작성에 필요한 Java 패키지나 클래스를 포함시키는데 사용, 보통 한 줄에 하나의 import 사용
- - session : 웹 브라우저와 웹 서버가 지속적인 연결을 위해 필요한 정보를 임시로 저장해두는 방법(주로 웹 사이트에 로그인하거나 쇼핑몰에서 장바구니 등), default = true
- - buffer : 버퍼의 크기를 변경하는 기능 수행, out 객체의 버퍼 크기를 변경할 수 있음, default = 8KB
- - autoFlush : 버퍼가 가득 찰 경우, 버퍼에 있는 내용을 자동으로 브라우저에 전송, default = true
- - errorPage : 현재 JSP 문서에서 예외가 발생한 경우, 예외를 처리하는 문서를 지정하는 역할을 수행
- - isErrorPage : 현재 JSP 문서가 일반 문서인지 아니면 예외를 처리하는 문서인지를 지정, default = true
- - isThreadSafe : 기본적으로 Servlet은 스레드로 동작하기 때문에 스레드로 인한 동기화 문제를 해결하기 위한 속성, default = true

# include directives
- file : 현재 JSP 파일에 다른 HTML이나 JSP 문서를 포함하기 위한 기능을 제공, <jsp:include> 액션 태그와 유사한 동작 수행

# 선언
- <%! %>

# 표현식
- <%= %>
- 스크립트릿 내부에서 사용할 수 없음.
- 세미콜론을 붙이지 않음.
- <form> 태그를 사용해 다른 JSP 문서에 JSP 변수를 전달. ex) <form name="myform" method="post" aciton="list.jsp?data=<%= name %>">

# 스크립트릿(scriptlet)
- JSP 문서 내에서 자바 코드를 기술할 수 있는 부분
- 자바 코드만을 사용
- 디자이너의 유지보수가 어려움 -> JSTL custom tag, Beans로 대체되고 있음.
- MVC를 사용하면 많이 사용하지 않음(JSP는 View로만 사용하기 때문)
- html 코드를 사용하려면 out.println(html)로 사용해야함.

# form 태그
- <form name="name" method="POST|GET" action="#(servlet)" enctype="Post 방식으로 전달되는 인코딩 방식을 지정">
- enctype : application/x-www-form-urlencoded 방식 (default) : text만을 보냄.
            multipart/form-data 방식 : text + file 보낼 수 있음.
  
# POST 방식
- 주로 form 태그의 구성요소에 입력된 값을 전달할 때 사용.
- - 입력된 데이터는 Body를 통해 전달 (데이터 크기에 제한이 없음)
- 전달되는 값들은 주소 표시줄에 나타나지 않음. (queryString x)
- - 보안성 유지
- - GET 방식보다 처리속도가 늦음

# GET 방식
- form 태그가 존재하지 않는 문서에서 다른 문서로 데이터를 전달할 때 사용
- QueryString으로 전달

# JSP 내장 객체
- request : client가 server에 정보를 요청
- - 헤더 정보 추출에 관련된 메서드, 시스템의 정보 추출 관련 메서드, form 태그 구성 요소의 파라미터 처리 관련 메서드
- - getParameter(String name): String, getParameterNames(): Enumeration, getParameterValues(String name): String[]
- response : server가 client에게 정보를 응답
- pageContext
- session
- application
- out
- config
- page
- exception
