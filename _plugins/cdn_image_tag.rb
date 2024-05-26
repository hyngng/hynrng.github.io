# plugins/cdn_image_tag.rb

module Jekyll
    module Filters
      def cdn_image_tag(input)
        # site.cdn 설정값이 없으면 원본 입력값을 그대로 반환
        return input unless site.config["cdn"]
  
        # Markdown 이미지 태그를 찾아서 src 속성을 변경
        input.gsub(/<img src="(\/[^"]+)"/) do |match|
          "<img src=\"#{site.config["cdn"]}#{$1}\""
        end
      end
    end
  end