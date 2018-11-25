module Mdb
  module ActionsHelper

    def mdb_page_action(title = nil, url = nil, options = {}, &block)
      content_for :page_actions do
        if block_given?
          content_tag :li, capture(&block), class: 'nav-link nav-item action-item'
        else
          content_tag :li, class: 'nav-link nav-item action-item' do
            link_to url, options.except(:icon) do
              concat content_tag(:i, '', class: "fa fa-#{options[:icon]}") if options[:icon]
              concat content_tag :span, title, class: 'clearfix d-none d-sm-inline-block'
            end
          end
        end
      end
    end

  end
end
