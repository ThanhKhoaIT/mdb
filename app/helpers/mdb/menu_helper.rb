module Mdb
  module MenuHelper

    def mdb_menu_group(title, options = {}, &block)
      builder = Mdb::Components::MenuBuilder.new
      header = link_to '#', class: 'collapsible-header' do
        if options[:icon]
          concat content_tag :i, '', class: "fa fa-#{options[:icon]}"
        end
        concat content_tag :span, title
        concat content_tag :i, '', class: 'fa fa-angle-down rotate-icon'
      end
      body = content_tag :div, class: 'collapsible-body' do
        content_tag :ul, capture(builder, &block), class: 'list-unstyled'
      end

      content_for :mdb_admin_menu do
        content_tag :li do
          concat header
          concat body
        end
      end
    end

  end
end
