module Jekyll
    module DescriptionFilter
      def description_filter(seo_tags, content)
        # content에서 "들어가며"를 제거하고 앞 160자를 추출하여 메타 설명 생성
        new_description = content.gsub("들어가며", "").strip[0..159]
  
        # 기존 description 태그를 새로운 description 태그로 교체
        seo_tags.gsub!(/<meta name="description" content=".*?" \/>/, %Q(<meta name="description" content="#{new_description}" />))
        seo_tags
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::DescriptionFilter)