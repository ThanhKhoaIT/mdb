module Mdb
  module TemplateHelper

    def fallback_render(file, message = 'template not exists!')
      render partial: file
    rescue ActionView::MissingTemplate
      items = file.split('/')
      items[-1] = "_#{items.last}.html.haml"
      "app/views/#{items.join('/')} #{message}"
    end

  end
end
