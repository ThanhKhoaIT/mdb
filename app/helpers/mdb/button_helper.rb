module Mdb
  module ButtonHelper

    def mdb_button(text, options = {})
      styles = mdb_css_class_names(options[:class], 'btn')
      styles << " waves-effect" if options[:effect]
      styles << " waves-light" if options[:light]
      styles << " btn-rounded" if options[:rounded]
      styles << " btn-floating" if options[:floating]
      styles << " peach-gradient" if options[:g_peach]
      styles << " purple-gradient" if options[:g_purple]
      styles << " blue-gradient" if options[:g_blue]
      styles << " aqua-gradient" if options[:g_aqua]
      styles << " btn-#{options[:size]}" if options[:size]
      styles << " btn-#{options[:style]}" if options[:style] && !options[:outline]
      styles << " btn-outline-#{options[:style]}" if options[:style] && options[:outline]
      concat content_tag :button, text, type: :button, class: styles
      content_tag(:span, options[:counter], class: :counter) if options[:counter]
    end

  end
end
