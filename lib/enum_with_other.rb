# frozen_string_literal: true

require 'enum_with_other/version'
require 'enum_with_other/railtie'
require 'enum_with_other/core'

module EnumWithOther
  class ParameterError < StandardError
    def initialize(message)
      @message = message
    end

    def message
      "enum \"#{@message}\" does not exist"
    end
  end

  class NoColumnError < StandardError
    def initialize(message)
      @message = message
    end

    def message
      "column \"#{@message}\" does not exist"
    end
  end
end
