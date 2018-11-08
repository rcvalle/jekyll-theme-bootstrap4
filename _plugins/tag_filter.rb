module Jekyll
  module TagFilter
    def tag_url(tag)
      site = @context.registers[:site]
      site.config['tags_dir'] ? "#{site.config['baseurl']}/#{site.config['tags_dir']}/#{tag.tr(' ', '-')}/" : "#{site.config['baseurl']}/tags/#{tag.tr(' ', '-')}/"
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagFilter)
