# frozen_string_literal: true

require 'enum_with_other/validator'

module EnumWithOther
  module Core
    def enum_with_other(definitions)
      definitions.each do |name, value|
        other_enum_name = "other_#{name}"
        raise ParameterError, other_enum_name unless value.with_indifferent_access.key?(other_enum_name)

        validates other_enum_name, enum_with_other: true
      end
      enum(definitions)
    end
  end
end
