module Mdb
  module Components
    class MenuBuilder < BaseBuilder

      def item(text, url)
        content_tag :li do
          link_to text, url, class: 'waves-effect'
        end
      end

    end
  end
end
