module Mdb
  module ButtonHelper

    def mdb_button(text, options = {})
      styles = mdb_css_class_names(options[:class], 'btn')
      styles << " waves-effect" if options[:dark]
      styles << " waves-light" if options[:light]
      styles << " btn-rounded" if options[:rounded]
      styles << " btn-floating" if options[:floating]
      styles << " #{options[:gradient]}-gradient" if options[:gradient]
      styles << " btn-#{options[:size]}" if options[:size]
      styles << " btn-#{options[:style]}" if options[:style] && !options[:outline]
      styles << " btn-outline-#{options[:style]}" if options[:style] && options[:outline]
      styles << " btn-mdb-color" unless options[:style]
      concat content_tag :button, text, type: :button, class: styles
      content_tag(:span, options[:counter], class: :counter) if options[:counter]
    end

  end
end
