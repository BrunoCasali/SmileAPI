module SmileAPI
  class Config
    attr_accessor :system_type

    def initialize(system_type = "default")
      @system_type = system_type
    end

  end
end
