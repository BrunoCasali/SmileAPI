module SmileAPI

  class Profile
    attr_accessor :name, :personality, :sex, :birthday, :config

    def initialize(name, personality, sex, birthday, config = SmileAPI::Config.new("default"))
      @name = name
      @personality = personality
      @sex = sex
      @birthday = birthday
      @config = config
    end
  end
end
