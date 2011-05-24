class Settings < Settingslogic
  source "#{Rails.root}/config/initializers/settings.yml"
  namespace Rails.env
end
