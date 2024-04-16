---
title: "아두이노에서 객체지향 활용하기"
description: "아두이노에서 객체지향을 구현하는 방법을 정리합니다."

categories: [프로그래밍, 튜토리얼]
tags: [아두이노, 객체지향, 프로그래밍]
start_with_ads: true

toc: true
toc_sticky: true
 
date: 2022-11-04
last_modified_at: 2023-04-12
---

## **들어가며**

개인적으로 아두이노를 별로 좋아하는 편은 아닙니다. 하드웨어 단계에서 발생하는 오류를 잡기가 무지막지하게 어렵고 난해하기 때문인데, 이번에 아두이노를 사용할 기회에 한 번 더 놓이게 되었습니다.

"이왕 하는거 새로운 것에 도전해서 뭐라도 배워가자" 하는 마음에 객체지향 설계를 굳이 사용해 봤습니다. 아두이노는 C++을 기반으로 동작하는데, 기존에 접해본 같은 객체지향 언어 C#이나 파이썬과는 다른 모습이 있어 조금 생소했네요. 어려움은 있었지만 그래도 잘 동작하는 모습까지 확인하고 나니 뿌듯합니다. 혹시라도 나중에 C++을 다루게 된다면 도움이 되면 좋겠습니다.

## **예시 코드**

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