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
  s.summary          = "A short description of JSONFunction."
  s.description      = <<-DESC
                       An optional longer description of JSONFunction

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/JSONFunction"
  s.license          = 'MIT'
  s.author           = { "骆杨" => "lyyx_0@163.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/JSONFunction.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
