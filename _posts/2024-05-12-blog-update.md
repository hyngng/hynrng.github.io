---
title: "깃허브 블로그 테마 업데이트하기"
description: "깃허브 블로그를 업데이트하는 방법을 정리합니다."
categories: [블로그]
tags: [블로그]
start_with_ads: true

toc: true
toc_sticky: true

date: 2024-05-12
last_modified_at: 2024-05-12
---

## **들어가며**

제가 사용중인 Chirpy 테마는 꾸준히 관리되며 주기적으로 업데이트되고 있습니다. 심심할 때 가끔 **[업데이트 내역](https://github.com/cotes2020/jekyll-theme-chirpy/blob/master/docs/CHANGELOG.md)**을 찾아보고는 하는데, 이번에 확인해보니 마침 어제자로 버전이 `7.0.0`로 올라가며 많은 개선점과 신기능이 생겼습니다.

눈에 띄는 것은 이번 업데이트로 로컬 비디오 및 오디오 파일 임베딩 기능이 추가되었고, 프론트매터에서 `description` 작성을 정식 지원한다는 겁니다. 마침 요즘 블로그의 여러 기능을 하나하나 써보는 재미에 맛들렸는데 이런 신기능을 넣어주면 궁금해서 참을 수 없습니다. 바로 업데이트에 도전해보겠습니다.

## **업데이트**

깃허브 블로그는 타 블로그 플랫폼보다 서비스 제공자와의 결합도가 낮습니다. 테마 업데이트를 강제하지도 않고, 자동으로 제공하지도 않죠. 덕분에 블로그 운영 자유도가 높긴 하지만 테마 업데이트를 할 때마다 변경사항을 일일히 확인해주어야하기 때문에 힘든 면이 있습니다.

저의 경우 **[테마를 커스터마이징](https://hynrng.github.io/posts/first-blog-customization/)**하면서 `_data/locales/ko-KR.yml`{: .filepath }를 통해 페이지 한국어 번역을 개선하거나, 사이드바의 아이콘 유형과 크기를 변경하거나, 글 미리보기의 제목을 볼드체로 처리하는 등의 자잘한 작업을 거쳤는데 이런 변경사항은 공식적으로는 지원하지 않기 때문에 제가 작성한 코드를 외과수술 하듯이 하나하나 확인하며 보존해야 합니다. **[공식 업그레이드 가이드](https://github.com/cotes2020/jekyll-theme-chirpy/wiki/Upgrade-Guide)**에서도 "Please be patient and careful to resolve these conflicts"라며 인내심을 가지고 작업할 것을 안내하고 있죠.

1. 원본 파일 백업
2. 

```bash
git remote add upstream https://github.com/jekyll/jekyll.git
```

```bash
git branch -a
```

```bash
git merge remotes/upstream/hotfix/7.0.1
```