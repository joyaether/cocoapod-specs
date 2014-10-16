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
  s.source_files = 'Database/*.{h,m}', '*.{h,m}'

  arc_files = 'Database/AFHTTPClient.m',
    'Database/AFHTTPRequestOperation.m',
    'Database/AFImageRequestOperation.m',
    'Database/AFJSONRequestOperation.m',
    'Database/AFNetworkActivityIndicatorManager.m',
    'Database/AFPropertyListRequestOperation.m',
    'Database/AFURLConnectionOperation.m',
    'Database/AFXMLRequestOperation.m',
    'Database/UIImageView+AFNetworking.m'
  s.exclude_files = arc_files, 'Database/FileDownloader.{h,m}', 'Database/RestStoreRequester.{h,m}'

  s.subspec 'ARC' do |arc|
    arc.requires_arc = true
    arc.source_files = arc_files
  end
end
