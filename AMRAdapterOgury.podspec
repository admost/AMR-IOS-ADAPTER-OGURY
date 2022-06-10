Pod::Spec.new do |s|
  s.name             = 'AMRAdapterOgury'
  s.version          = '3.0.1.3'
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
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    'VALID_ARCHS': "arm64 armv7"
  }
  s.dependency 'AMRSDK', '~> 1.5.9'
  s.dependency 'OguryAds', '3.0.1'
end

