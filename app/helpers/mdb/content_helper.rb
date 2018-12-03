module Mdb
  module ContentHelper

    def mdb_small_content(&block)
      content_tag :div, class: :row do
        content_tag :div, class: 'col-4 offset-4 mb-3' do
          mdb_card_body do
            capture(&block)
          end
        end
      end
    end

    def mdb_medium_content(&block)
      content_tag :div, class: :row do
        content_tag :div, class: 'col-6 offset-3 mb-3' do
          mdb_card_body do
            capture(&block)
          end
        end
      end
    end

    def mdb_full_content(&block)
      content_tag :div, class: :row do
        content_tag :div, class: 'col-12' do
          mdb_card_body do
            capture(&block)
          end
        end
      end
    end

  end
end
