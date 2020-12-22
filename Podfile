#每个podspec可以依赖其他库，但是不能相互依赖
#为了解耦，只依赖公共库，不依赖模块库
#模块与模块之间通信通过解耦方法实现

workspace 'DJHMainProject'#workspace名称
source 'https://github.com/CocoaPods/Specs.git'
#source 'https://github.com/DuanJiaHuan/mySpecs.git'#远程的话需要加上podspec源地址

#主工程模块名称
target 'DJHMainProject' do
  platform :ios, '8.0'
  use_frameworks!
  project 'DJHMainProject.xcodeproj'

  #公共基础模块pod导入
  pod 'DJHCommonCore',       :path=> './DJHCommonCore/'
  #公有pods
  pod 'YYKit'

end

#公共库模块名称
target 'DJHCommonCore' do
  platform :ios, '8.0'
  use_frameworks!
  project 'DJHCommonCore/DJHCommonCore.xcodeproj'
  
  pod 'AFNetworking'
  pod 'YYKit'
  pod 'KMNavigationBarTransition'
  pod 'Masonry'
  pod 'MJExtension'
  
end


