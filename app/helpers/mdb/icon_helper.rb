module Mdb
  module IconHelper

    def mdb_icon(icon)
      content_tag :i, '', class: "fa fa-#{icon}"
    end

  end
end
