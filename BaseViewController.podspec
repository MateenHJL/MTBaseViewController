#
# Be sure to run `pod lib lint BaseViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BaseViewController'
  s.version          = '1.3.1'
  s.summary          = 'A short description of BaseViewController.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'the framework can used your project,just implement BaseHttpItem then config what you want.'

  s.homepage         = 'https://github.com/MateenHJL/MTBaseViewController.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '13162378587@163.com' => '13162378587@163.com' }
  s.swift_version = '5.2'
  s.source           = { :git => 'https://github.com/MateenHJL/MTBaseViewController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'BaseViewController/Classes/**/*'
  
  s.public_header_files = 'Pod/Classes/**/*.h'
  
  s.dependency 'IQKeyboardManager'
  s.dependency 'WZLBadge'
  
  s.static_framework = true
  s.requires_arc = true
   
end
