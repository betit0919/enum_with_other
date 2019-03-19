# frozen_string_literal: true

module EnumWithOther
  class Railtie < Rails::Railtie
    initializer :enum_with_other do
      ActiveSupport.on_load(:active_record) do
        extend EnumWithOther::Core
      end
    end
  end
end
