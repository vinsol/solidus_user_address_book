module SolidusUserAddressBook
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'solidus_user_address_book'
    
    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "spree.address_book.environment", :before => :load_config_initializers do |app|
      SolidusUserAddressBook::Config = Spree::AddressBookConfiguration.new
    end


    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
      Spree::Ability.register_ability(Spree::AddressAbility)
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
