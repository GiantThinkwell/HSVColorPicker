#
# Be sure to run `pod lib lint HSVColorPicker.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HSVColorPicker"
  s.version          = "0.1.0"
  s.summary          = "An iOS HSV Color Picker control"
  s.description      = <<-DESC
                       An iOS HSV Color Picker control

                       * Based on UIView and OpenGL
                       * Very easy to use
                       * MIT Licensed
                       DESC
  s.homepage         = "https://github.com/GiantThinkwell/HSVColorPicker"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Nicholas Hart" => "nick@haikudeck.com" }
  s.source           = { :git => "https://github.com/GiantThinkwell/HSVColorPicker.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'HSVColorPicker' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
