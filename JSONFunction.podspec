#
# Be sure to run `pod lib lint JSONFunction.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JSONFunction"
  s.version          = "0.1.0"
  s.summary          = "packaging NSJSONSerialization tool"
  s.description      = <<-DESC
                       packaging NSJSONSerialization tool.
                       DESC
  s.homepage         = "https://github.com/MarsLuo/JSONFunction"
  s.license          = 'MIT'
  s.author           = { "骆杨" => "lyyx_0@163.com" }
  s.source           = { :git => "https://github.com/MarsLuo/JSONFunction.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
