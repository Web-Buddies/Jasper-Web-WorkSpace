## Spring BOOT Study with Inflearn

### Context

1. Basic Concept
2. Learning Schedule
3. .....

### 1. Basic Concept

웹 개발 ??

- 정적컨텐츠

- MVC 와 템플릿 엔진

View -> 화면에 보여지는 것에 모든것을 집중 // Controller Model 에 data 를 담아서 View 로 전달해줌

- API

#### What is Gradle ?

Gradle 은 의존성 관리 툴로써, 과거에 사용하던 Maven 보다 좀더 편리하게 의존성을 관리 해준다. 과거에 진행했던 Tomcat 을 라이브러리로 알아서 관리해줘서 Main method 를 돌리기만 해도, 서버를 띄워 준다.

!! Log 관리 라이브러리를 알아 보자!! 현재 본인은 System.out.print 를 이용해서 흐름을 파악하는데, Log 를 사용해서 심각한 에러를 좀더 관리 하기 위해서 slf4j 나 Logback 라이브러리를 공부해서 확인 해보자.

Thymeleaf Template Engine에 대해서 좀 더 공부를 해보자.

%%% spring-boot-devtools 라이브러리를 추가 하면, html 파일을 컴파일만 해주면 서버 재시작 없이 View 파일 변경 가능, inIntelliJ -> Menu build -> Recompile

#### Annotation

> @Controller -> 웹서버의 통신시에 가장 먼저 진입하는 진입점

> @GetMapping("A") -> Get 방식으로 들어오는 친구들을 잡아줘서 해당 메소드로 보내준다. 그다음 ViewResolver 를 통해서 Thymeleaf 템플릿 엔진이 처리 될수 있게 resources:templates/`+{ViewName}+`.html 이런식으로 전달됨

> @RequestParam("A") String A get 방식일떄의 param 을 받아서 처리해줌 @RequestParam() 내부에 해당하는 value 값과, 무조건 필요한것인가를 옵션으로 선택할수 있게끔 required 라는 param 도 내부적으로 존재.

> @ResponseBody Http 의 header 부 와 body 부 중에 response body 부에 저 annotation 이 위치한 메소드가 직접 넣어주겠다 라는 의미 HTML 이 아닌, 그대로 data 로 보내준다. Property 방식으로써 객체를 반환하게 되면, JSON으로 값을 전달하게 정해져있다.
>
> > @ResponseBody 좀더 정리 --> HTTP 의 Body 에 문자 내용을 직접 반환, viewResolver 대신에 HttpMessageConverter 가 동작한다. 기본 문자처리 : StringHttpMessageConverter , 기본 객체 처리 : MappingJackson2HttpMessageConverter byte 처리 등등 기타 여러 HttpMessageConverter 가 기본 적으로 등록되어 있다.

#### ETC

@@@@ 배포하기 위해서는 ???

./gradlew build >> 빌드 폴더로 진입

java -jar "만들어진 jar 파일" // 서버 잘 열리는지 확인후에

저 jar 파일로 복사해서 서버에 넣어서 배포 하면 되지롱~~

@@@@ 만약 잘 안됬어?

./gradlew clean build >> build 폴더 사라짐

그리고 다시 돌아가도록 !
