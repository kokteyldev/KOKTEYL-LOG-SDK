Pod::Spec.new do |s|
  s.name             = 'KokteylLog'
  s.version          = '1.1.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
									Copyright 2016
									KOKTEYL Bilgi Teknolojisi Hizmetleri A.S.. 
									LICENSE
								}
  s.homepage         = 'http://www.kokteyl.com/'
  s.author           = { 'Kokteyl' => 'info@kokteyl.com' }
  s.summary          = 'Kokteyl Logging SDK.'
  s.description      = <<-DESC
Kokteyl logging SDK is a light weight loggin framework.
                       DESC
  s.source           = { :git => 'https://github.com/kokteyldev/KOKTEYL-LOG-SDK.git',
 								 :tag => s.version.to_s }
  s.documentation_url = 'https://admost.github.io/amrios'
  s.platform = :ios
  s.pod_target_xcconfig = { 
    "VALID_ARCHS": "arm64 arm64e armv7 armv7s x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s arm64 arm64e',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'KKLog/KKLog.xcframework'
end
