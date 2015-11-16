Pod::Spec.new do |s|
s.name         = 'ABCircularProgressView'
s.version      = '1.0'
s.summary      = 'ABCircularProgressView is a simple circular progress view written in Swift 2.'
s.homepage     = 'https://github.com/adilbenmoussa/ABCircularProgressView'
s.screenshots  = 'https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/screenshot1.png', 'https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/screenshot.png'
s.license      = 'MIT'
s.author             = { 'Adil Ben Moussa' => 'adil.benmoussa@gmail.com' }
s.social_media_url   = 'http://twitter.com/adilbenmoussa'
s.platform     = :ios
s.ios.deployment_target = '8.0'
s.frameworks   = ['UIKit']
s.source       = { :git => 'https://github.com/adilbenmoussa/ABCircularProgressView.git', :tag => "#{s.version}" }
s.source_files  = 'ABCircularProgressView/*.{h,swift}'
end
