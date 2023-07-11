Pod::Spec.new do |s|
  s.name             = 'AMRAdapterOgury'
  s.version          = '4.1.4.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
                            Copyright 2016
                            Admost Mediation Limited.
                            LICENSE
                            }
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Ogury adapter for AMR SDK.'
  s.description      = 'AMR Ogury adapter allows publishers to mediate Ogury banner, native, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-OGURY.git',
                 :tag => s.version.to_s
                }
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform      = :ios
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = 'AMRAdapterOgury/Libs/AMRAdapterOgury.xcframework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64'}
  s.swift_versions = ['5']
  s.static_framework = true
  s.dependency 'AMRSDK', '~> 1.5.17'
  s.dependency 'OgurySdk', '4.1.4'
end

