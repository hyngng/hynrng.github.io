---
title: "블로그 웹마스터도구 등록부터 SEO 최적화까지"
description: "깃허브 블로그를 여러 웹마스터도구에 등록하고 SEO 관련 문제를 해결한 과정을 정리합니다."

categories: [블로그]
tags: [블로그, 웹마스터도구, SEO 최적화]
start_with_ads: true

toc: true
toc_sticky: true

date: 2024-05-23 11:53:00 +0900
last_modified_at: 2024-05-23 11:53:00 +0900

mermaid: true
---

## **들어가며**

어쩌다보니 블로그 글만 계속 작성하고 있네요. 팔소매를 걷어붙이고 블로그를 재정비하는 와중에 처음 겪어보는 여러 신기한 경험을 해서 그런 것 같습니다. 그래도 이제 슬슬 그만 좀 쓰고 싶은데, 앞으로도 글로 옮길만한 소재거리가 있으면 계속 이어나가겠지만야 이게 마지막 블로그 시리즈가 되었으면 좋겠습니다.

## **웹마스터도구 등록**

1년 넘게 블로그를 개인 기록용으로 딥웹에 가깝게 운영하다가 올해 초에 검색엔진에 등록해주었습니다. 놀랐던 점은 티스토리나 네이버 블로그의 경우 별도로 신청을 하지 않더라도 메이저 플랫폼에서 색인을 생성해 검색결과에 노출해주지만, 깃허브 블로그와 같은 개인 사이트의 경우 그런 과정의 첫 발돋움은 수동으로 해주어야 한다는 겁니다.

![search-console](/2024-05-23-webmasters-and-seo/search-console.webp){: .w-75 }
_대표적인 웹마스터도구 구글 서치 콘솔_

한국 포털사이트 점유율 순으로 **[구글 서치 콘솔](https://search.google.com/search-console/)**, **[네이버 서치어드바이저](https://searchadvisor.naver.com/)**, **[다음 웹마스터도구](https://webmaster.daum.net/)**, **[빙 웹마스터도구](https://www.bing.com/webmasters?lang=ko)** 총 4가지 플랫폼에 등록해주었습니다. 특이한 점이 있다면 사이트별로 도메인 등록 후 실제 검색결과에 노출되기까지의 시간이 천차만별이었다는 건데, 3월 20일 즈음에 도메인을 신청하고나서부터 다음은 약 하루, 구글은 약 2주, 네이버와 빙은 약 3주 정도의 시간이 지나고 나서야 노출이 되기 시작했습니다.  
결과적으로 현재 모든 플랫폼에서 `site:hynrng.github.io` 검색어 입력 시 블로그 노출이 확인되는 상태입니다. 만약 저처럼 웹마스터도구에 개인 사이트를 등록하고싶으신 분이 계시다면 다음을 참고하시면 도움이 될 것 같습니다.

### **구글 서치 콘솔**
- 깃허브 블로그의 **[Chirpy 테마](https://github.com/cotes2020/jekyll-theme-chirpy)**를 이용하는 경우 HTML 태그를 통한 사이트 소유권 인증은 `_includes/head.html`{: .filepath }에 작성해도 정상적으로 인증되기는 하지만, 그보다는 템플릿 차원에서 관련 기능을 지원하고 있으니 `_config.yml`{: .filepath }의 `webmaster_verifications.google`란을 이용하는 것이 좋습니다.

### **네이버 서치어드바이저**
- 네이버 서치어드바이저의 경우 아톰(Atom) 유형의 피드를 받지 않아 `rss.xml`을 따로 만들어 등록해주어야 합니다. 예시 RSS 파일은[^1] **[제 깃허브](https://github.com/hynrng/hynrng.github.io/blob/main/assets/rss.xml)**에서, 예시 동작은 **[이곳](https://hynrng.github.io/rss.xml)**에서 확인해볼 수 있습니다.

### **다음 웹마스터도구**
- **[검색등록 신청 사이트](https://register.search.daum.net/index.daum)**와 **[웹마스터도구](https://webmaster.daum.net/)**가 나뉘어져 있습니다. 처음 사이트 등록은 검색등록 신청 사이트에서, 사이트 등록 이후 사이트맵과 피드는 웹마스터도구에서 따로 제출해야 합니다.
- 신생 웹사이트의 경우 파비콘이 노출되지 않습니다. 이유가 궁금해 **[고객센터](https://cs.daum.net/)**에 문의해봤으나 _"파비콘은 내부 기준 우선순위에 따라서 수집이 진행되고 있으며 자세한 기준은 정책상 자세히 공개할 수 없다."_ 라는 답변을 받았습니다. 매우 찜찜하지만 개인 차원에서 할 수 있는 일은 없는 듯 합니다.

### **빙 웹마스터도구**
- 구글 서치 콘솔에 사이트가 정상적으로 등록되어있다면 구글과 연결해서 그대로 사용할 수 있습니다. 제출한 사이트맵, 피드 등이 연동되며 사이트 소유권 인증도 건너뛸 수 있습니다.
- 빙 웹마스터도구도 파비콘이 노출되지 않는 문제가 있으나 **[지원 팀에 문의](https://www.bing.com/webmasters/support)**하면 친절히 해결해줍니다. 제 경우 문의를 보낸 후 이틀만에 파비콘이 정상적으로 함께 노출이 되기 시작했습니다.

## **SEO 최적화**

### **이미지 용량 절약**

구글에서 제공하는 **[PageSpedd Insights](https://pagespeed.web.dev/?utm_source=psi&utm_medium=redirect)**를 통해 페이지 성능을 측정해봤는데 꽤 느린 편으로 결과가 나왔습니다. 함께 제공되는 결과 보고서를 읽어보니 이미지 용량을 절감하라는 권고사항이 있어 이 부분을 개선해주었습니다.

저는 평소 블로그에 **[간간히 그린 그림](https://hynrng.github.io/posts/fifth-drawing/)**이나 **[사진 찍은 것들을](https://hynrng.github.io/posts/photos-of-gyemyo/)**을 정리해두곤 하는데, 이 이미지들은 평균 규격이 4000x3000에 확장자도 `.png` 또는 `.jpg`이기 때문에 용량이 그림의 경우 200KB~1MB, 사진의 경우 1~3MB 정도에 달했습니다. 다른 웹사이트를 참고해보니 100KB 이하로 처리한 경우가 많아 비슷한 최적화 수준에 도달하기 위해 다음의 처리를 거쳤습니다.

- 이미지 크기를 1/4로 줄였습니다. 4000x3000 이미지의 경우 2000x1500 이미지가 됩니다.
- 이후 `.gif` 및 `.jpg`, `.png` 확장자 파일을 손실압축을 거쳐 `.webp` 확장자로 인코딩[^2]했습니다.

![before-after](/2024-05-23-webmasters-and-seo/before-after.webp)
_왼쪽은 png, 오른쪽은 webp 확장자 이미지_

왼쪽이 원본, 오른쪽이 다운스케일 후 webp로 인코딩을 거친 파일인데 용량이 각각 1.79MB와 83.7KB입니다. 약 20배에 달하는 엄청난 차이죠. 그러면서도 사진 품질에는 치명적인 차이가 없습니다. 모든 파일에 이렇게 드라마틱한 차이가 있는 것은 아니긴 하지만, 대부분은 확실한 용량 절감 효과를 보여주었습니다. 효과가 좋아 다른 포스트의 이미지 파일에도 비슷한 처리를 해주었어요.

다만 어찌됐건 품질이 떨어지는 이미지를 보여준다는 것이 아쉽기는 해서, 그림과 사진의 경우 _"이미지 원본은 제 깃허브에서 확인할 수 있습니다!"_ 와 같은 문구를 포스트 말미에 추가하여 원한다면 불편하더라도 원본 이미지로 연결될 수 있도록 만들었습니다.

### **H1태그 중복 해결**

네이버와 빙 웹마스터도구에서 지적한 사항입니다. 예전에 **[블로그 템플릿을 수정](https://hynrng.github.io/posts/first-blog-customization/)**하면서 알게 된 것이지만 웹 콘텐츠 접근성 지침(WCAG)이라는 것이 있습니다. 웹 페이지는 가능하면 한 개의 h1태그를 포함해야 한다는 것이죠. 제 블로그의 경우 왼쪽 사이드바의 사이트 제목과 글 제목이 같이 `<h1>` 태그로 처리되고 있는데, 이 점이 충돌되고 있었습니다.

{% raw %}
```liquid
<h1 class="site-title">
  <a href="{{ '/' | relative_url }}">{{ site.title }}</a>
</h1>
```
{: file="_includes/sidebar.html" }
{% endraw %}

문제가 되는 코드입니다. 글 제목보다는 사이트 제목의 헤더 태그를 낮추는 것이 좋을 것 같아 `site.title` 제목이 표시되는 코드를 수정하기로 했습니다.  블로그 제목이 글이 작성된 페이지에서는 h2로, 루트 디렉토리 등에서는 h1로 표시되는 식으로 변경했고, 코드는 아래와 같이 작성했습니다.

{% raw %}
```liquid
{% if page.layout == 'post' %}
  <h2 class="site-title">
    <a href="{{ '/' | relative_url }}">{{ site.title }}</a>
  </h2>
{% else %}
  <h1 class="site-title">
    <a href="{{ '/' | relative_url }}">{{ site.title }}</a>
  </h1>
{% endif %}
```
{: file="_includes/sidebar.html" }
{% endraw %}

크롬 개발자 도구로 확인해보면 블로그 홈에서는 h1로, 현재 페이지에서는 h2로 표시됩니다. 적용 후 네이버와 빙 웹마스터도구의 사이트 진단을 통해 오류가 수정되었음을 확인할 수 있었습니다.

<!--
### **메타 태그 생성 문제**

> 아직 해결중에 있는 문제입니다!
{: .prompt-warning }

빙 웹마스터도구에서 지적한 사항입니다. **[블로그 테마를 업데이트](https://hynrng.github.io/posts/blog-update/)**하면서 `description` 작성을 정식 지원하기 때문에 이제 큰 문제가 되는 사안은 아니지만, 자잘한 개선이 필요한 상태입니다.

제 블로그의 많은 글은 도입부로 "들어가며"로 시작되는 첫 문단을 거치는데 이 부분이 문제가 되어 _"`<meta name="description">` 태그에 동일 설명문 발견"_ 이라는 오류 안내문으로 이어졌습니다. 결과적으로 프론트메터에 `description`을 작성해주는 것으로 해결되었지만, 문제는 이제 _"너무 길거나 짧은 Meta Description"_ 라는 오류 안내문이 발생하고 있습니다.

`description`의 적절한 길이는 150~160자로 안내되고 있습니다. 매 페이지마다 손수 150자에 달하는 분량을 작성하기에는 여간 번거로운 일이 아니기 때문에 `_includes/post-description.html`{: .filepath }를 수정하려 했으나 어째서인지 적용되지 않았습니다. 대신 메타데이터를 생성하는 `_includes/head.html`{: .filepath }를 확인해보니 다음의 코드에서 `<meta>` 태그가 생성되고 있습니다.

{% raw %}
```liquid
{%- capture seo_tags -%}
  {% seo title=false %}
{%- endcapture -%}

...

{{ seo_tags }}
```
{: file="_includes/head.html" }
{% endraw %}

포스트의 `_includes/post-description.html`{: .filepath }는 `description`을 생성하는 역할로 보이나 실제로 사용되지는 않는 것 같습니다. 오히려 메타 태그는 일괄적으로 `jekyll-seo-tag`을 통해 생성되고 있었고, 결정적으로 `_config.yml`에 다음과 같은 부분이 있습니다.

```md
# jekyll-seo-tag settings › https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/usage.md

...

# The end of `jekyll-seo-tag` settings
```
{: .file="_config.yml" }

주어진 URL을 타고 들어가면 문서 하단에서 다음을 확인할 수 있습니다:

> The SEO tag will respect the following YAML front matter if included in a post, page, or document:  
...  
description - A short description of the page's content  
...  
Note: Front matter defaults can be used for any of the above values as described in advanced usage with an image example.
-->

<!--
### **이미지 CDN 변경**

- CDN는 Statically 이용. jsdelivr는 이미지 CDN용이 아니기도 하고, 속도가 조금 느렸음.
    - GitHub 레포지토리 연결이 되고, 공식적으로 이미지 CDN으로 사용할 수 있고, 무료임.
    - SEO를 위해
    - 이거 안 쓰기로 함. mp3 및 mp4 지원 안됨.
-->

## **마치며**

> 앞으로도 추가되거나 개선된 사항, 기록할만한 특이사항이 있으면 글을 업데이트할 예정입니다.
{: .prompt-info }

검색노출 신청부터 SEO 최적화까지 부랴부랴 작업해주었지만 얼마나 효과가 있을지는 잘 모르겠습니다. 다만 제 블로그는 홍보나 남에게 필요한 정보를 생산하는 공간보다는 개인기록용 성격이 더 강하기도 해서, 검색노출 관리는 해주되 크게 신경쓰지는 않으려고 합니다. 다만 웹마스터도구도 그렇고, 블로그가 좀 안정되면 기술적 호기심 차원에서 차후 반응형 이미지 또는 구조화된 데이터를 시도해보고 싶네요.

<br>

---

[^1]: RSS 2.0을 따릅니다.
[^2]: 80%의 손실률을 주었습니다.