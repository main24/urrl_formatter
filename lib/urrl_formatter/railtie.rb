module UrrlFormatter
  class Railtie < Rails::Railtie
    initializer 'urrl_formatter.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAddtions
      end
    end
  end
end