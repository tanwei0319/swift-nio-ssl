Pod::Spec.new do |s|
  s.name = 'CNIOBoringSSL'
  s.version = '2.23.0'
  s.license = { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  s.summary = 'TLS Support for SwiftNIO, based on BoringSSL.'
  s.homepage = 'https://github.com/apple/swift-nio-ssl'
  s.author = 'Apple Inc.'
  s.source = { :git => 'https://github.com/apple/swift-nio-ssl.git', :tag => s.version.to_s }
  s.documentation_url = 'https://apple.github.io/swift-nio-ssl/'
  s.module_name = 'CNIOBoringSSL'

  s.swift_version = '5.4'
  s.cocoapods_version = '>=1.6.0'
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '6.0'

  s.source_files = 'Sources/CNIOBoringSSL/**/*.{swift,c,h,cc}'
  s.ios.source_files = 'Sources/CNIOBoringSSL/**/*.S'
  s.osx.source_files = 'Sources/CNIOBoringSSL/**/*.S'
  s.tvos.source_files = 'Sources/CNIOBoringSSL/**/*.S'

  s.watchos.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'OPENSSL_NO_ASM=1',
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) OPENSSL_NO_ASM'
  }
  s.public_header_files = 'Sources/CNIOBoringSSL/include/*.h'
  
  s.libraries = 'c++'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => 'Sources/CNIOBoringSSL/include', 'CLANG_CXX_LANGUAGE_STANDARD' => 'c++14', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
end
