module SmileAPI
  require 'mongo'

  class Connection
    attr_accessor :connection, :database

    def initialize
      @connection = Mongo::Connection.from_uri "mongodb://reader:cabuum#1@oceanic.mongohq.com:10087/smile_api"
      @database = @connection.db "smile_api"
    end

  end

end