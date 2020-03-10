#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'app_review'
  s.version          = '1.0.1'
  s.summary          = 'Request and Write Reviews and Open Store Listing for Android&#x2F;iOS in Flutter.'
  s.description      = <<-DESC
Request and Write Reviews and Open Store Listing for Android&#x2F;iOS in Flutter.
                       DESC
  s.homepage         = 'http://rodydavis.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.swift-version       = '4.2'
  s.swift_version       = '4.2'
  s.swiftversion       = '4.2'
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  
  s.ios.deployment_target = '8.0'
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      if target.name == 'GRDB.swift'
        target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '4.0'
        end
      end
    end
  end
end

