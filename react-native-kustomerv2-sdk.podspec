require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-kustomerv2-sdk"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-kustomerv2-sdk
                   DESC
  s.homepage     = "https://github.com/alex-lanclos/react-native-kustomerv2-sdk.git"
  s.license      = "MIT"
  s.authors      = { "Alex Lanclos" => "alexlanclos@gmail.com" }
  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/alex-lanclos/react-native-kustomerv2-sdk.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

