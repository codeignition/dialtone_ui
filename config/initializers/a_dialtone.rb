yaml_path     = File.join Rails.root, 'config', 'dialtone.yml.erb'
settings_hash = YAML.load(ERB.new(File.read(yaml_path)).result).to_hash

DTSettings = Hashie::Mash.new settings_hash[Rails.env]
