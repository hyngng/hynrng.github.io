---
title: "아두이노에서 객체지향 활용하기"
description: "아두이노에서 객체지향을 구현하는 방법을 정리합니다."

categories: [프로그래밍, 튜토리얼]
tags: [프로그래밍, 아두이노, 객체지향]
start_with_ads: true

toc: true
toc_sticky: true
 
date: 2022-11-04 13:48:00 +0900
last_modified_at: 2023-04-12 20:38:00 +0900
---

개인적으로 아두이노를 별로 좋아하는 편은 아닙니다. 하드웨어에 의한 오류가 너무 빈번하게 일어나기 때문인데, 최근에 아두이노를 사용할 기회가 한 번 더 있었습니다.

"이왕 하는거 새로운 것에 도전해서 뭐라도 배워가자" 하는 마음에 객체지향 설계를 적용해봤습니다. 아두이노는 C++을 기반으로 동작하는데, 기존에 접해본 같은 객체지향 언어 C#이나 파이썬과는 다른 모습이 있어 조금 생소했네요. 어려움은 있었지만 그래도 잘 동작하는 모습까지 확인하고 나니 뿌듯합니다. 혹시라도 나중에 C++을 다루게 된다면 도움이 되면 좋겠습니다.

## **예시 코드**

```cpp
#include "Arduino.h"

class MainFunctions
{
  public:
    AddFiveHundreadWon(int Money);
    AddOneHundreadWon(int Money);
    AddFiftyWon(int Money);
};
```
{: file="MainFunctions.cpp" }

```cpp

#include "Arduino.h"
#include "MainFunctions.h"

int MainFunctions::AddFiftyWon(int Money)
{
  Money += 500;
  return Money;
}

int MainFunctions::AddOneHundreadWon(int Money)
{
  Money += 1000;
  return Money;
}

int MainFunctions::AddFiveHundreadWon(int Money)
{
  Money += 2000;
  return Money;
}
```
{: file="MainFunctions.h" }

```cpp
void setup()
{
    ...
}

void loop()
{
    Money = MainFunctions.AddFiveHundreadWon(Money);
    Money = MainFunctions.AddOneHundreadWon(Money);
    Money = MainFunctions.AddFiftyWon(Money);
}
```
{: file="Arduino_OOP.ino" }

간단한 금액을 추가하는 기능의 코드를 낱개로 분할한 구현한 예시입니다. 클래스의 선언부인 `MainFunctions.h`에서 500원, 100원, 50원을 더하는 역할의 메서드를 선언하고, `MainFunctions.h`에서는 선언된 메서드를 정의하는 역할을, `Arduino_OOP.ino`에서는 정의된 메서드를 호출하는 역할을 맡도록 작성했습니다.