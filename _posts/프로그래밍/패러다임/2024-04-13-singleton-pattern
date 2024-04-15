---
title: "유니티 싱글톤 패턴"
description: "싱글톤 패턴의 특징과 사용 양상을 유니티 중심으로 정리합니다."

categories: [프로그래밍, 패러다임]
tags: [유니티, C#, 프로그래밍 패턴]
start_with_ads: true

toc: true
toc_sticky: true

mermaid: true

date: 2024-04-13
last_modified_at: 2024-04-14
---

# **들어가며**

싱글톤 패턴은 특정 클래스의 인스턴스가 단 하나만 존재하도록 보장하는 디자인 패턴입니다. **[현재 개발중인 게임](https://hynrng.github.io/posts/armonia-planning/)**에서도 매우 유용하게 사용할 수 있어서 자세히 정리해두려고 합니다. 

싱글톤 패턴은 주로 아래와 같은 장점이 있습니다.
: - 특정 기능이나 데이터를 어디서든 쉽게 접근하고 공유할 수 있습니다.
- 게임의 전반적인 상태를 여러 스크립트나 씬에서 동일하게 유지할 수 있습니다.
- 오디오, 스프라이트, 오브젝트 등과 같은 데이터를 중복 없이 관리할 수 있습니다.

제 경우에는 `GameManager.cs`{: .filepath }를 싱글톤 패턴으로 활용하고 있으며 

# **기본 코드**

```cs
public class GameManager : MonoBehaviour
{
    private static GameManager instance = null;
    public static GameManager Instance
    {
        get
        {
            if (instance == null)
                return null;
                
            return instance;
        }
    }

    void Awake()
    {
        if (instance == null)
        {
            instance = this;

            DontDestroyOnLoad(this.gameObject);
        }
        else
            Destroy(this.gameObject);
    }

    /* 추가적인 함수 작성 */
}
```
{: file="GameManager.cs" }

코드도 기능도 매우 단순합니다. 상단의 get set 프로퍼티 부분와 하단의 `Awake()` 모두 인스턴스가 단 한 개만 존재하도록 보장합니다.

# **사용 예시**

아래와 같이 사용할 수 있습니다.

```cs
public void Log()
{
    Debug.Log("Singleton is working");
}
```
{: file="GameManager.cs" }

```cs
GameManager.Instance.Log();
```
{: file="OtherClass.cs" }

```mermaid
sequenceDiagram
    participant Player
    participant Enemy
    participant GameManager

    Player->>Enemy: Attack()
    Enemy-->>Player: Die()

    Player->>GameManager: GameManager.Instance.IncreaseScore(scoreValue)
    GameManager->>GameManager: UpdateScoreUI()

    Note right of GameManager: 싱글톤 GameManager 인스턴스는<br/>게임 전체에서 공유되며,<br/>점수를 안전하게 관리합니다.
```