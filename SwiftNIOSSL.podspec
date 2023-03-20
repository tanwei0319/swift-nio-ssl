Pod::Spec.new do |s|
  s.name = 'SwiftNIOSSL'
  s.version = '2.23.0'
  s.license = { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  s.summary = 'TLS Support for SwiftNIO, based on BoringSSL.'
  s.homepage = 'https://github.com/apple/swift-nio-ssl'
  s.author = 'Apple Inc.'
  s.source = { :git => 'https://github.com/apple/swift-nio-ssl.git', :tag => s.version.to_s }
  s.documentation_url = 'https://apple.github.io/swift-nio-ssl/'
  s.module_name = 'NIOSSL'

  s.swift_version = '5.4'
  s.cocoapods_version = '>=1.6.0'
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '6.0'

  s.source_files = 'Sources/NIOSSL/**/*.{swift,c,h,cc}'
  s.ios.source_files = 'Sources/NIOSSL/**/*.S'
  s.osx.source_files = 'Sources/NIOSSL/**/*.S'
  s.tvos.source_files = 'Sources/NIOSSL/**/*.S'

  s.watchos.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'OPENSSL_NO_ASM=1',
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) OPENSSL_NO_ASM'
  }
  
  
  s.dependency 'Swift-Atomics', '>= 1.0.0' 
  s.dependency 'CNIOBoringSSLShims', s.version.to_s 
  s.dependency 'CNIOAtomics', '>= 2.23.0', '< 3' 
  s.dependency 'SwiftNIOPosix', '>= 2.23.0', '< 3' 
  s.dependency 'SwiftNIOCore', '>= 2.23.0', '< 3' 
  s.dependency 'CNIOWindows', '>= 2.23.0', '< 3' 
  s.dependency '_NIODataStructures', '>= 2.23.0', '< 3' 
  s.dependency 'CNIOBoringSSL', s.version.to_s 
  s.dependency 'CNIODarwin', '>= 2.23.0', '< 3' 
  s.dependency 'SwiftNIOTLS', '>= 2.23.0', '< 3' 
  s.dependency 'SwiftNIOConcurrencyHelpers', '>= 2.23.0', '< 3' 
  s.dependency 'SwiftNIOEmbedded', '>= 2.23.0', '< 3' 
  s.dependency 'SwiftNIO', '>= 2.23.0', '< 3' 
  s.dependency 'CNIOLinux', '>= 2.23.0', '< 3'
  
  s.xcconfig = { 'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module' }
end
