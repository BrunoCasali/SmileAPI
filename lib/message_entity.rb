module SmileAPI
  class MessageEntity
    attr_accessor :language, :keywords, :type_message, :profile

    def initialize(language, keywords, type_message, profile)
      @language = language
      @keywords = keywords
      @type_message = type_message
      @profile = profile
    end
  end
end