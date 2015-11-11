use_frameworks!

Pod::Spec.new do |s|
s.name         = "ABCircularProgressView"
s.version      = "0.1.0"
s.summary      = "ABCircularProgressView is a simple circular progress view written in Swift 2, it draws the circular progress and a stop button (App store look like)."
s.homepage     = "https://github.com/adilbenmoussa/ABCircularProgressView"
s.screenshots  = "https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/screenshot1.png", "https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/screenshot.png"
s.license      = "MIT"
s.author             = { "Adil Ben Moussa" => "adil.benmoussa@gmail.com" }
s.social_media_url   = "http://twitter.com/adilbenmoussa"
s.platform     = :ios
s.ios.deployment_target = '8.0'
s.source       = { :git => "https://github.com/adilbenmoussa/ABCircularProgressView.git", :tag => "#{s.version}" }
s.source_files  = "ABCircularProgressView/*.swift"
end