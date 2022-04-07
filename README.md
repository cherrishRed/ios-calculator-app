>프로젝트 기간 2022.03.14 ~ 2022.03.25
>
>팀원 : [Red](https://github.com/cherrishRed) / 리뷰어 : [개굴](https://github.com/yoo-kie)

## 목차

- [프로젝트 소개](#프로젝트-소개)
- [프로젝트 구조](#프로젝트-구조)
- [키워드](#키워드)
- [STEP 1](#step-1)
- [STEP 2](#step-2)
- [STEP 3](#step-3)

## 프로젝트 소개

 <img src = "https://user-images.githubusercontent.com/63499481/162123412-575fa7ac-07ec-42b5-9f76-512b17072f39.png" width="100px">
기본앱 계산기를 만들어 보자!

## 프로젝트 구조 

## 개발환경 및 라이브러리

[![swift](https://img.shields.io/badge/swift-5.0-orange)]()
[![xcode](https://img.shields.io/badge/Xcode-13.0-blue)]()

## 키워드
`Unit Test` `자료구조` `Queue` `Stack` `Equtable`

## [STEP 1]
[STEP 1 PR](https://github.com/yagom-academy/ios-calculator-app/pull/164)

### 고민한 점
- dictionary 를 사용하여 Queue를 구현한 이유
- test Unit 의 네이밍
- test Unit 에서 private으로 설정한 값을 사용할 수 없는 문제

### 배운 개념
- 자료구조
- Unit test
- Equtable 프로토콜

#### 자료구조

<center><img src="https://i.imgur.com/c5rhhLJ.jpg" width = "600"></center>

[자료구조 관련 TIL](https://github.com/cherrishRed/TIL/blob/main/2022/2022.03.17.md)

#### Unit test
print를 찍어서 검사 하지 말고, 코드를 테스트 하는 코드를 Unit Test 에 작성할 수 있다. 
TDD (테스트 주도 개발) 방식으로, 테스트를 먼저 작성하고 이후에 테스트에서 오류가 나지 않게 코드를 구현하는 방법론이 있다. 
[Unit Test 관련 TIL](https://github.com/cherrishRed/TIL/blob/main/2022/2022.03.14.md)

#### Equtable 프로토콜
= 을 사용해서 값을 비교할 수 있는 것은 Equtable 이라는 프로토콜을 채택하고 있어서 이다. 
사용자가 만든 인스턴스에 Equtable 이라는 프로토콜을 채택하고, = 에 해당하는 메서드를 구현해주면 = 을 사용해서 값을 비교할 수 있다.

## [STEP 2]
[STEP 2 PR](https://github.com/yagom-academy/ios-calculator-app/pull/185)
### 고민한 점
- 옵셔널과 에러 핸들링을 사용하지 않고 숫자 예외를 처리하는 방법
- 

### 배운 개념
- private인 메서드를 Unit test에서 검사하는 방법 
- 파일 분리 
- 고차함수 사용을 권장하는 이유 
- .nan 사용법 

#### private인 메서드를 Unit test에서 검사하는 방법
private 인 메서드는 직접 메서드를 불러와서 검사할 수가 없다. 
하지만 private 을 적용해 주고 있는 이유는 내부에서 이 메서드를 다른 메서드가 불러서 사용 한다는 의미이다. 그렇다면 직접 검사를 하는 것보다, 그 메서드를 이용해서 테스트를 검사해 주는 것이 좋다. 

private 이라는 접근 제어자를 붙였는데, 직접 접근해서 검사 한다는 것은 구현한 사항에 어긋나는 방식이다. 

#### 파일 분리
파일분리에 정답이 있는 것은 아니지만, 연관이 있는 것들끼리 모아주는 것이 좋다. 
기본으로 제공해 주는 것을 extension 할 경우에는 "String+extension" 이런식으로 파일 이름을 정해주는 것이 좋다. 

#### 고차함수 사용을 권장하는 이유


#### .nan 사용법
Float 와 Double 에는 nan 이라는 타입이 있다. 
숫자가 아니다 라는 의미로 숫자 안에 넣을 수 있지만, 실제론 숫자가 아닌 것을 의미한다.

nan 을 비교할려면 그냥 비교하면 안되고 isNaN 메서드를 사용해야 한다. 

Double.nan == Double.nan -> false
Double.nan.isNaN -> true 

## [STEP 3]
### 고민한 점
- 리펙토링을 할 수록 생기는 사이트 이펙트를 어떻게 처리할 것인가?

### 배운 개념



