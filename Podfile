#每个podspec可以依赖其他库，但是不能相互依赖
#为了解耦，只依赖公共库，不依赖模块库
#模块与模块之间通信通过解耦方法实现

workspace 'DJHMainProject'#workspace名称
source 'https://github.com/CocoaPods/Specs.git'
#source 'https://github.com/DuanJiaHuan/mySpecs.git'#远程的话需要加上podspec源地址

#---主工程模块名称---#
target 'DJHMainProject' do
platform :ios, '8.0'
use_frameworks!
project 'DJHMainProject.xcodeproj'

#开发阶段使用导入模块工程方式；发布时，需配置好podspec，使用pod导入
#pod 'FYJChatModule',      :path=> './FYJBusinessModules/'
#pod 'FYJWorkbenchModule', :path=> './FYJBusinessModules/'
#pod 'FYJSocialModule',    :path=> './FYJBusinessModules/'
#pod 'FYJMyModule',        :path=> './FYJBusinessModules/'

#公共基础模块pod导入
pod 'DJHCommonCore',       :path=> './DJHCommonCore/'

#公有pods
pod 'YYKit'

end

#---公共库模块名称---#
target 'DJHCommonCore' do
  platform :ios, '8.0'
  use_frameworks!
  project 'DJHCommonCore/DJHCommonCore.xcodeproj'
  
  pod 'AFNetworking'
  pod 'YYKit'
  pod 'KMNavigationBarTransition'
  pod 'Masonry'
  
end

#---业务模块集合名称---#
target 'FYJBusinessModules' do
  platform :ios, '8.0'
  use_frameworks!
  project 'FYJBusinessModules/FYJBusinessModules.xcodeproj'
  
  pod 'DJHCommonCore', :path=> './DJHCommonCore/'

end

#---（业务模块集合）我的模块名称---#
target 'FYJMyModule' do
  platform :ios, '8.0'
  use_frameworks!
  project 'FYJBusinessModules/FYJBusinessModules.xcodeproj'
  
  pod 'DJHCommonCore', :path=> './DJHCommonCore/'
  
end

#---（业务模块集合）工作台模块名称---#
target 'FYJWorkbenchModule' do
  platform :ios, '8.0'
  use_frameworks!
  project 'FYJBusinessModules/FYJBusinessModules.xcodeproj'
  
  pod 'DJHCommonCore', :path=> './DJHCommonCore/'
  
end

#---（业务模块集合）社区模块名称---#
target 'FYJSocialModule' do
  platform :ios, '8.0'
  use_frameworks!
  project 'FYJBusinessModules/FYJBusinessModules.xcodeproj'
  
  pod 'DJHCommonCore', :path=> './DJHCommonCore/'
  
end

#---（业务模块集合）聊天模块名称---#
target 'FYJChatModule' do
  platform :ios, '8.0'
  use_frameworks!
  project 'FYJBusinessModules/FYJBusinessModules.xcodeproj'
  
  pod 'DJHCommonCore', :path=> './DJHCommonCore/'
  
end


