module Mdb
  module PaginateHelper

    def mdb_paginate(objects)
      paginate(objects, theme: 'mdb')
    end

  end
end
