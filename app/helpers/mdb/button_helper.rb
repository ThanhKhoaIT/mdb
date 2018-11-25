module Mdb
  module ButtonHelper

    def mdb_button(text, options = {})
      default = { method: :get }
      options = default.merge(options)
      styles = mdb_helper_css_class_names(options[:class], 'btn')
      styles << " waves-effect" if options[:dark]
      styles << " waves-light" if options[:light]
      styles << " btn-rounded" if options[:rounded]
      styles << " btn-block" if options[:block]
      styles << " btn-floating" if options[:floating]
      styles << " #{options[:gradient]}-gradient" if options[:gradient]
      styles << " btn-#{options[:size]}" if options[:size]
      styles << " btn-#{options[:style]}" if options[:style] && !options[:outline]
      styles << " btn-outline-#{options[:style]}" if options[:style] && options[:outline]
      styles << " btn-mdb-color" unless options[:style]
      if options[:path]
        link_button(text, styles, options)
      else
        button_tag(text, styles, options)
      end
    end

    private

    def button_tag(text, styles, options)
      concat content_tag :button, text, type: options[:type], class: styles
      content_tag(:span, options[:counter], class: :counter) if options[:counter]
    end

    def link_button(text, styles, options)
      concat link_to text, options[:path], class: styles, method: options[:method]
      content_tag(:span, options[:counter], class: :counter) if options[:counter]
    end

  end
end
