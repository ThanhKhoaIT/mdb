module Mdb
  module CardHelper

    def mdb_card_body(&block)
      content_tag :div, class: 'card' do
        content_tag :div, class: 'card-body' do
          capture(&block)
        end
      end
    end

  end
end
