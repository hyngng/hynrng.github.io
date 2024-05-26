# _plugins/cdn_deliver.rb

module Jekyll
  module CdnDeliver
    def cdn_deliver(input)
      site = @context.registers[:site]
      cdn_url = site.config['cdn'] || ''
      input.gsub(%r!src="/(.*?)"!, "src=\"#{cdn_url}/\\1\"")
    end
  end
end

Liquid::Template.register_filter('cdn_deliver', Jekyll::CdnDeliver)