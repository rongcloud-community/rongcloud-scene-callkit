
Pod::Spec.new do |s|
  
  # 1 - Info
  s.name             = 'RCSceneCallKit'
  s.version          = '0.0.1'
  s.summary          = 'CallKit For RCRTC'
  s.description      = "CallKit For RCRTC. Single Call."
  s.homepage         = 'https://www.rongcloud.cn/devcenter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shaoshuai' => 'shaoshuai@rongcloud.cn' }
  s.source           = { :git => 'https://github.com/rongcloud-community/rongcloud-scene-callkit.git', :tag => s.version.to_s }
  
  # 2 - Mini Version
  s.ios.deployment_target = '11.0'
  
  # 3 - XCConfig
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'VALID_ARCHS' => 'arm64 x86_64'
  }
  
  # 4 - Source
  s.source_files = 'RCSceneCallKit/Classes/**/*'
  
  # 5 - Public
  s.public_header_files = 'Pod/Classes/**/RCSceneCallKit.h', 'Pod/Classes/**/RCCall.h'
  
  # 6 - Assets
  s.resources = 'RCSceneCallKit/Assets/Resources/*.bundle', 'RCSceneCallKit/Assets/Resources/*.lproj/*'
  
  # 7 - Dependencies
  # CallLib Recommend >= 5.1.3
  s.dependency 'RongCloudRTC/RongCallLib'
  # IMKit Recommend >= 5.1.8
  s.dependency 'RongCloudIM/IMKit'
  
  #
  
end
