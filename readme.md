1. 구조

    [https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FCiXz0%2FbtqBQ1iMiVT%2FstaXr7UO95opKgXEU01EY0%2Fimg.png](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FCiXz0%2FbtqBQ1iMiVT%2FstaXr7UO95opKgXEU01EY0%2Fimg.png)

    - Model : 애플리케이션에서 사용되는 데이터와 그 데이터를 처리하는 부분
    - View : 사용자에게 보여지는 UI 부분
    - View Model : View를 표현하기 위해 만든 View를 위한 Model. View를 나타내 주기 위한 Model이자 View를 나타내기 위한 데이터 처리를 하는 부분.
2. 동작
    1. 사용자의 Action들은 View를 통해 들어옴
    2. View에 Action이 들어오면, Command 패턴으로 View Model에 Action을 전달
    3. View Model은 Model에게 데이터를 요청
    4. Model은 View Model에게 요청받은 데이터를 응답
    5. View Model은 응답 받은 데이터를 가공하여 저장
    6. View는 View Model 과 Data Binding해 화면을 나타냄
3. 특징

    Command 패턴과 Data Binding 을 사용해 구현

    Command 패턴과 Data Binding 을 이용해 View와 View Model 사이의 의존성을 없앰

    View Model 과 View는 1:N 관계 

4. 장점 및  단점
    - 장점

        View와 Model 사이의 의존성이 없다.

        Command 패턴과 Data Binding을 사용해 View와 View Model 사이의 의존성 또한 없앤 디자인 패턴

        각각의 부분은 독립적임으로 모듈화 하여 개발할 수 있음

    - 단점

        View Model 설계가 쉽지 않음
