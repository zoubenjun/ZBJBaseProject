#
# Be sure to run `pod lib lint ZBJBasicKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZBJBasicKit'
  s.version          = '0.1.0'
  s.summary          = 'basic kit'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    appdelegate tableviewcontroller etc
                       DESC

  s.homepage         = 'https://github.com/zoubenjun/ZBJBaseProject'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zoubenjun' => '502153525@qq.com' }
  s.source           = { :git => 'https://github.com/zoubenjun/ZBJBaseProject.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.source_files = 'ZBJBasicKit/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'

   s.resource_bundles = {
     'ZBJBasicKit' => ['ZBJBasicKit/Assets/*.png']
   }

  s.subspec 'ZBJAppDelegateKit' do |sp|
      sp.source_files = 'ZBJBasicKit/Classes/ZBJAppDelegateKit/**/*'
      sp.public_header_files = 'ZBJBasicKit/Classes/ZBJAppDelegateKit/**/*.h'
  end
  
  s.subspec 'ZBJLaunchPageGuide' do |sp|
      sp.source_files = 'ZBJBasicKit/Classes/ZBJLaunchPageGuide/**/*'
      sp.public_header_files = 'ZBJBasicKit/Classes/ZBJLaunchPageGuide/**/*.h'
  end
  
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'ZBJPoplar'
end
