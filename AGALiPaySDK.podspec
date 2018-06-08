
Pod::Spec.new do |s|
  s.name             = 'AGALiPaySDK'
  s.version          = '1.0.0'
  s.summary          = 'A lib repository for ALipay.'
  s.description      = <<-DESC
                        AGALiPaySDK is a private lib repository for ALipay.
                       DESC

  s.homepage         = 'https://docs.open.alipay.com/204/105051'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AgenricWon' => 'AgenricWon@gmail.com' }
  s.source           = { :git => 'https://github.com/Agenric/AGALiPaySDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.requires_arc     = true

  s.vendored_frameworks = 'AGALiPaySDK/AlipaySDK.framework'
  s.resources        = 'AGALiPaySDK/AlipaySDK.bundle'

  s.frameworks       = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CFNetwork', 'CoreGraphics', 'CoreMotion', 'Foundation', 'UIKit', 'Security'
  s.libraries        = 'z', 'c++'
end