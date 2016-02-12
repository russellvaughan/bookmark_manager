
require 'dm-postgres-adapter'
require 'data_mapper'

require_relative 'models/tag'
require_relative 'models/link'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
