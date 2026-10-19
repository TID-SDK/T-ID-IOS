Pod::Spec.new do |s|
  s.name             = 'T-ID'
  s.module_name      = 'TID'
  s.summary          = 'T-ID iOS SDK'
  s.version          = '2.0.3'
  s.author           = 'T-ID'
  s.homepage         = 'https://www.tbank.ru/t-id'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.source           = { git: 'https://opensource.tbank.ru/mobile-tech/T-ID-iOS.git', tag: s.version.to_s }
  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/**/*.swift'
  s.resource_bundles = {
    'TIDResources' => ['Sources/**/*.{xcassets,lproj}']
  }
  s.static_framework = true
  
  s.dependency('TSSLPinningPublic', '~> 11.0')
end
