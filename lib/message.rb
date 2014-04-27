module SmileAPI
  class Message
    attr_reader :error, :message

    def self.getMessage(entity)
      @coon = SmileAPI::Connection.new
      collection = @coon.database.collection "messages"
      collection.find().each { |row| p row }
      @coon.connection.close
    end

    def error?
      if self.error.nil?
        true
      else
        false
      end
    end
  end
end