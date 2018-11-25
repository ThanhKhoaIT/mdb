module Mdb
  module NormalizeHelper

    def mdb_helper_css_class_names(input, default = nil)
      case input.class.to_s
      when Array.to_s
        str_name = input.join(' ')
      when String.to_s, Symbol.to_s
        str_name = input.to_s
      else
        str_name = input.to_s
      end
      [default, str_name].join(' ')
    end

    def mdb_helper_option_to_array(data)
      case data.class.to_s
      when Array.to_s
        return data.map(&:to_sym)
      when String.to_s
        return [data.to_sym]
      when Symbol.to_s
        return [data]
      else
        return []
      end
    end

  end
end
