module SmileAPI
  class Message
    attr_reader :error, :message

    def self.getMessage(entity)
      @coon = SmileAPI::Connection.new
      collection = @coon.database.collection "messages"
      collection.find("type_message" => entity.type_message, "language" => entity.language,
                      "keywords" => { '$in' => entity.keywords },
                      "profile.config.system_type" => entity.profile.config.system_type,
                      "profile.sex" => entity.profile.sex,
                      "profile.personality" => { '$in' => entity.profile.personality.split(",") },
                      "$and" => [
                          "profile.birthday.start" => { '$lte' => entity.profile.birthday },
                          "profile.birthday.end" => { '$gte' => entity.profile.birthday }
                                ]).each { |row| p row["message"].gsub("@name", entity.profile.name) }
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