module Jekyll
  class CategoryAndTagIndexGenerator < Generator
    def generate(site)
      if site.layouts.key? 'category_or_tag_index'
        dir = site.config['category_dir'] || 'categories'
        site.categories.keys.each do |category|
          write_category_or_tag_index(site, File.join(dir, category), :category, category)
        end
        dir = site.config['tag_dir'] || 'tags'
        site.tags.keys.each do |tag|
          write_category_or_tag_index(site, File.join(dir, tag), :tag, tag)
        end
      end
    end

    def write_category_or_tag_index(site, dir, key, category_or_tag)
      path = File.join(site.source, dir, 'index.html')
      FileUtils.mkdir_p(File.dirname(path))
      File.open(path, 'wb') do |f|
        f.write(<<EOF)
---
layout: category_or_tag_index
#{key}: #{category_or_tag}
---
EOF
      end
    end
  end
end
