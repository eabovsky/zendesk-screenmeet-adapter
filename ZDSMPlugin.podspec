#
# Be sure to run `pod lib lint ZDSMPlugin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZDSMPlugin'
  s.version          = '0.1.0'
  s.summary          = 'A Zendesk plugin to use and access the ScreenMeet SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#   * Add long description of the pod here.
  s.description      = <<-DESC
---------------------------------------------------------------
---------------------------------------------------------------
                       DESC

  s.homepage         = 'https://github.com/eabovsky/zendesk-screenmeet-adapter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eugene Abovsky' => 'eugene@projector.is', 'Adrian Cayaco' => 'acayaco@stratpoint.com', 'Mylene Bayan' => 'mbayan@stratpoint.com' }
  s.source           = { :git => 'https://github.com/eabovsky/zendesk-screenmeet-adapter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZDSMPlugin/**/*.{h,m}'

  s.resource_bundles = {
    'ZDSMPlugin' => ['ZDSMPlugin/**/*.xib'],
    'ZDSMPlugin' => ['ZDSMPlugin/Assets/*.png'],
    'ZDSMPlugin' => ['ZDSMPlugin/Vendors/JSQMessagesViewController/Assets/JSQMessagesAssets.bundle']
  }

  s.frameworks = 'MobileCoreServices', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics', 'ImageIO', 'Foundation'

  s.dependency 'JSQSystemSoundPlayer', '~> 4.4.0'
  s.dependency 'UIActivityIndicator-for-SDWebImage', '~> 1.2'
  s.dependency 'MBProgressHUD', '~> 1.0'

end
