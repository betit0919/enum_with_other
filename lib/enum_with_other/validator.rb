# frozen_string_literal: true

module EnumWithOther
  class EnumWithOtherValidator < ActiveModel::EachValidator

    def validate_each(record, attribute, value)
      raise NoColumnError, attribute unless record.class.method_defined?(attribute)

      return unless record.send("#{attribute.to_s[6..-1]}?")

      if record.send(attribute.to_s + '?')
        record.errors.add(attribute, :blank) if value.blank?
      elsif value.present?
        record.errors.add(attribute, :present)
      end
    end
  end
end