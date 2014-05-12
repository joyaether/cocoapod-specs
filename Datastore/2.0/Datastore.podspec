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
  s.dependency 'AFNetworking', '~> 2.2'
  s.dependency 'SBJson', '~> 4.0.1'
  s.dependency 'FMDB/SQLCipher'

  s.public_header_files = 'Datastore/**/*.h'
  s.source_files = 'Datastore/Datastore.h'

  s.subspec 'Additions' do |add|
    add.source_files = 'Datastore/Additions/*.{h,m}'
  end

  s.subspec 'Core' do |core|
    core.dependency 'Datastore/Additions'
    core.source_files = 'Datastore/*.{h,m}', 'Datastore/Core/*.{h,m}'
  end

  s.subspec 'JSON' do |json|
    json.dependency 'Datastore/Core'
    json.source_files = 'Datastore/JSON/*.{h,m}'
  end
end
