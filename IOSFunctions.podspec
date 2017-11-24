#
# Be sure to run `pod lib lint IOSFunctions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IOSFunctions'
  s.version          = '0.1.0'
  s.summary          = 'IOSFunctions is used for adding dependencies like Alamofire'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A short description of IOSFunctions is that using functions by adding Dependency like alamofire,Validations and URLSessions!
                       DESC

  s.homepage         = 'https://github.com/suneelseelam/IOSFunctions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Apple' => 'suneelseelam9@gmail.com' }
  s.source           = { :git => 'https://github.com/suneelseelam/IOSFunctions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'IOSFunctions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'IOSFunctions' => ['IOSFunctions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Alamofire', '~> 4.4'
end
