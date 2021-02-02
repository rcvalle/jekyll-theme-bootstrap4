module Jekyll
  module TagFilter
    def tag_url(tag)
      site = @context.registers[:site]
      if site.config['tags_dir']
        "#{site.config['url']}/#{site.config['baseurl']}/#{site.config['tags_dir']}/#{category.tr(' ', '-')}/"
      else
        "#{site.config['url']}/#{site.config['baseurl']}/tags/#{category.tr(' ', '-')}/"
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagFilter)
