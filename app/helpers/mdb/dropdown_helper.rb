module Mdb
  module DropdownHelper

    def mdb_dropdown(title, options = {}, &block)
      builder = Mdb::Components::DropdownBuiler.new
      dropdown_id = SecureRandom.hex(5)
      optional = mdb_helper_option_to_array(options[:style])
      body_class = ['dropdown-menu']
      body_class << 'dropdown-menu-right' if optional.include?(:right)
      body_class << 'dropdown-primary' if optional.include?(:primary)

      header = link_to "##{dropdown_id}", class: 'dropdown-toggle', data: { toggle: :dropdown }, aria: { haspopup: true } do
        concat title
        concat mdb_icon 'angle-down'
      end
      body = content_tag :ul, capture(builder, &block), class: body_class, id: dropdown_id
      content_tag :div, class: "dropdown #{options[:class]}" do
        concat header
        concat body
      end
    end

  end
end
