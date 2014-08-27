Pod::Spec.new do |s|
  s.name = 'Datastore'
  s.version = '1.0'
  s.platform = :ios, '6.0'
  s.license = 'Closed'
  s.summary = 'Provides access to both REST and SQLite data store'
  s.homepage = 'https://github.com/joyaether/cloud-datastore-ios'
  s.author = { 'Stanley Lam' => 'stanleylam@joyaether.com' }
  s.source = { :git => 'https://github.com/joyaether/cloud-datastore-ios.git' }
  s.requires_arc = false

  s.public_header_files = 'Database/**/*.h', '*.{h}'
  s.source_files = 'Database/Database.h'
end
