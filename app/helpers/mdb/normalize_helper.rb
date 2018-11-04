module Mdb
  module NormalizeHelper

    def mdb_css_class_names(input, default = nil)
      str_name = input.to_s
      str_name = input if input.is_a?(String)
      str_name = input.join(' ') if input.is_a?(Array)
      [default, str_name].join(' ')
    end

  end
end
