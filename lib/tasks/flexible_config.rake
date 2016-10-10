namespace :flexible_config do
  desc "Print current flexible config state"
  task :print do
    require 'flexible-config'
    FlexibleConfig::Overview.new.print
  end
end
