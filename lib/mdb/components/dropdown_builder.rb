module Mdb
  module Components
    class DropdownBuiler < BaseBuilder

      def item(text, url, options = {})
        content_tag :li, class: 'dropdown-item' do
          link_to url, options.except(:icon) do
            concat content_tag :i, '', class: "fa fa-#{options[:icon]}" if options[:icon]
            concat content_tag :span, text
          end
        end
      end

    end
  end
end
