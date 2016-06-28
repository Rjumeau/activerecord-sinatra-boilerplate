require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

set :database, { adapter: "sqlite3", database: "db/database.sqlite3" }