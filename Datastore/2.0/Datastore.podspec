Pod::Spec.new do |s|
  s.name = 'Datastore'
  s.version = '2.0'
  s.platform = :ios, '5.0'
  s.license = 'Closed'
  s.summary = 'Provides access to both REST and SQLite data store'
  s.homepage = 'https://github.com/joyaether/datastore-ios'
  s.author = { 'Stanley Lam' => 'stanleylam@joyaether.com' }
  s.source = { :git => 'https://github.com/joyaether/datastore-ios.git' }
  s.requires_arc = true
  s.framework = 'Security'
  s.dependency 'AFNetworking', '~> 2.2'
  s.dependency 'SBJson', '~> 4.0.1'
end
