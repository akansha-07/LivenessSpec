
Pod::Spec.new do |s|
  s.name             = 'VidaLiveness'
  s.version          = '0.7.5'
  s.summary          = 'Liveness SDK from VIDA'

  s.description      = 'SDK to perform active and passive liveness. Can be used to detect presence of an actual person'

  s.homepage         = 'https://bitbucket.org/vidaid/vidaliveness'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tabrezp' => 'tabrez@vida.id' }
  s.source           = { :http => 'https://sdk-repo.dev.vida.id/ios/vidaLiveness/0.7.6-QA.zip'}
  s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/VidaLiveness/**"' }
  s.frameworks          = 'AVFoundation', 'Foundation', 'UIKit'
  s.requires_arc        = true
  
  s.ios.deployment_target = '11.0'

  s.source_files = 'VidaLiveness/Classes/**/*'
  s.static_framework = true
  s.resource_bundles = {
     'Resources' => ['VidaLiveness/Assets/**/*.*']
   }
  
  #s.resource = ['VidaLiveness/Classes/Liveness.storyboard']
  s.frameworks = ['AVFoundation', 'Foundation', 'UIKit']
  s.vendored_frameworks = 'VidaLiveness.framework'
  s.preserve_paths      = 'VidaLiveness.framework'
  s.dependency 'GoogleMLKit/FaceDetection'
  s.dependency 'DatadogSDK'
end
