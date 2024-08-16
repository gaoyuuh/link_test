#
# Be sure to run `pod lib lint OGThird.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OGThird'
  s.version          = '0.1.0'
  s.summary          = 'A short description of OGThird.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/gaoyu/OGThird'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gaoyu' => 'gaoyuhang@kanzhun.com' }
  s.source           = { :git => 'https://github.com/gaoyu/OGThird.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  
  s.pod_target_xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -fvisibility=default' }

  s.source_files = 'OGThird/Classes/**/*'
    
  s.vendored_frameworks = [ 'OGThird/Lib/Shared.framework' ]
  
#  s.dependency 'WCDB.objc', '2.1.0'
#  s.dependency 'WCDBOptimizedSQLCipher', '1.4.3'
#  s.dependency 'FlexLib', '3.3.3'
#  s.dependency 'FMDB/FTS'
#  s.dependency 'FMDB/SQLCipher'
#  s.dependency 'SQLCipher'
  
  # s.resource_bundles = {
  #   'OGThird' => ['OGThird/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
