module Mdb
  module NavbarHelper

    def mdb_nav_item(title = nil, url = nil, options = {}, &block)
      if title.nil?
        content_tag :li, capture(&block), class: 'nav-link nav-item'
      else
        content_tag :li, class: 'nav-link nav-item' do
          link_to url, options.except(:icon) do
            concat content_tag(:i, '', class: "fa fa-#{options[:icon]}") if options[:icon]
            concat content_tag :span, title, class: 'clearfix d-none d-sm-inline-block'
          end
        end
      end
    end

    def mdb_title(title)
      content_for :mdb_title do
        content_tag :p, title
      end
    end

  end
end
