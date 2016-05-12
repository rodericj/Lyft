Pod::Spec.new do |s|
  s.name             = "Lyft"
  s.version          = "0.0.2"
  s.summary          = "Some pink mustache company forgot to build that SDK."
  s.description      = "Lyft is a SDK that uses Lyft public API to get prices, etas, order Lyft and more."
  s.homepage         = "https://github.com/genadyo/Lyft"
  s.license          = 'MIT'
  s.author           = { "Genady Okrain" => "genady@okrain.com" }
  s.source           = { :git => "https://github.com/genadyo/Lyft.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/genadyo'
  s.ios.deployment_target = '8.0'
  s.source_files = 'Lyft/Classes/*'
end
