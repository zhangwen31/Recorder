#
#  Be sure to run `pod spec lint Recorder.podspec' to ensure this is a
#  确保运行“pod spec lint Recorder.podspec”以确保这是一个
#  valid spec and to remove all comments including this before submitting the spec.
#  有效规范，并在提交规范之前删除所有注释，包括此注释
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  要了解有关Podspec属性的更多信息，请参阅https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#  要查看CocoaPods回购协议中的工作PodSpec，请参阅https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata 规范元数据 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  这些将帮助人们找到你的图书馆，同时
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  你会觉得这是一件苦差事，这绝对对你有利。这个
  #  summary should be tweet-length, and the description more in depth.
  #  摘要应该是tweet的长度，并且描述更深入。
  #

  s.name         = "Recorder"
  s.version      = "1.0.0"
  s.summary      = "A short description of Recorder."

  # This description is used to generate tags and improve search results.
  # 此说明用于生成标记和改进搜索结果。
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * 思考：它做什么？你为什么写它？重点是什么？
  #   * Try to keep it short, snappy and to the point.
  #   * 尽量保持简短、活泼、切中要害。
  #   * Write the description between the DESC delimiters below.
  #   * 在下面的描述分隔符之间写入说明。
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  #   * 最后，不要担心缩进，CocoaPods会剥去它！
  s.description  = %{
  TODO: 添加描述内容
  }

  s.homepage     = "https://github.com/zhangwen31/Recorder"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  作者元数据―――――――――――――――――――――――――――――― #
  #
  #  sify the authors of the library, with email addresses. Email addresses
  #  用电子邮件地址筛选图书馆的作者。电子邮件地址
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  作者的姓名从SCM日志中提取。例如$git log。椰子荚也有
  #  accepts just a name if you'd rather not provide an email address.
  #  如果您不想提供电子邮件地址，只接受一个名称。
  #
  #  sify a social_media_url where others can refer to, for example a twitter
  #  筛选其他人可以引用的社交媒体url，例如twitter
  #  profile URL.
  #  #配置文件URL
  #

  s.author             = { "王恒" => "1066026709@qq.com" }
  # Or just: s.author    = "王恒"
  # s.authors            = { "王恒" => "1066026709@qq.com" }
  # s.social_media_url   = "https://twitter.com/王恒"

  # ――― Platform sifics 平台sifics――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then sify the platform and
  #  如果此Pod仅在iOS或OSX上运行，请筛选平台并
  #  the deployment target. You can optionally include the target after the platform.
  #  部署目标。您可以选择在平台之后包含目标。
  #

  #s.platform     = :ios
  s.platform     = :ios, "13.0"

  #  When using multiple platforms
  s.ios.deployment_target = "13.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location 源位置――――――――――――――――――――――――――――――― #
  #
  #  sify the location from where the source should be retrieved.
  #  筛选应检索源的位置
  #  Supports git, hg, bzr, svn and HTTP.
  #  #支持git、hg、bzr、svn和HTTP。
  #

  s.source       = { :git => "https://github.com/zhangwen31/Recorder.git", :tag => "#{s.version}" }


  # ――― Source Code 源代码――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  CocoaPods在如何包含源代码方面很聪明。对于源文件
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  提供一个文件夹将包括任何swift、h、m、mm、c和cpp文件。
  #  For header files it will include any header in the folder.
  #  对于头文件，它将包括文件夹中的任何头文件。
  #  Not including the public_header_files will make all headers public.
  #  不包括公共头文件将使所有头文件公开。
  #

#  s.source_files  = "Recorder/**/*.{h,m,swift}"
#  # s.exclude_files = "Classes/Exclude"   #排除文件
#
#  s.public_header_files = "Recorder/**/*.h"
  
  s.vendored_frameworks = ['Recorder.framework']
  s.source_files = 'Recorder.framework/Headers/*h'
  s.pod_target_xcconfig = {
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0",
    'VALID_ARCHS' => 'x86_64 armv7 arm64'
  }
  s.user_target_xcconfig = {
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0"
  }
  s.static_framework = true
  
  s.swift_version='5.0'


  # ――― Resources 资源――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  Pod中包含的资源列表。这些文件被复制到
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  具有构建阶段脚本的目标捆绑包。其他任何东西都会被清理。
  #  You can preserve files from being cleaned, please don't preserve
  #  您可以保留不被清理的文件，请不要保留
  #  non-essential files like tests, examples and documentation.
  #  非必要文件，如测试、示例和文档。
  #

  # s.resource  = "icon.png"
  s.resources = ['Recorder/Resources/Recorder.bundle','Recorder/Resources/RecorderLanguage.bundle']

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"  #保存路径


  # ――― Project Linking 项目链接―――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  将库与框架或库链接。图书馆不包括
  #  the lib prefix of their name.
  #  其名称的lib前缀。
  #

  s.frameworks  = "UIKit", "VideoToolbox", "QuartzCore", "OpenGLES", "MobileCoreServices", "MediaPlayer", "CoreVideo", "CoreMedia", "CoreGraphics", "AVFoundation", "AudioToolbox", "AssetsLibrary", "Foundation"
  # s.frameworks = "SomeFramework", "AnotherFramework"
#  s.vendored_framework = "#{s.name}.framework"

  # s.library   = "iconv"
  s.libraries = "bz2", "bz2.1.0", "z", "c++", "c++.1", "iconv",


  # ――― Project Settings 项目设置―――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  如果库依赖于编译器标志，则可以在xcconfig哈希中设置它们
  #  where they will only apply to your library. If you depend on other Podss
  #  它们只适用于您的库。如果你依赖其他的豆荚
  #  you can include multiple dependencies to ensure it works.
  #  您可以包含多个依赖项以确保其正常工作。

   s.requires_arc = true
   
   # 公共头文件导进组件.pch文件中,加入后，执行pod install, MXStatService-prefix.pch 文件中就有这些头文件
   s.prefix_header_contents = <<-EOS
   
   #import <SDWebImage/SDWebImage.h>
   #import <IQKeyboardManager/IQKeyboardManager.h>
   #import <Masonry/Masonry.h>
   #import <YYModel/YYModel.h>
   #import <MBProgressHUD/MBProgressHUD.h>
   #import <MJRefresh/MJRefresh.h>
   #import "RCDRMacro.h"
   #import "UIColor+RCDR.h"
   #import "NSDictionary+RCDR.h"
   #import "RCDRUtilities.h"
   #import "RCDRTools.h"
   #import "RCDRControl.h"
   #import "RCDRBaseViewController.h"
   #import "UITableViewCell+RCDR.h"
   #import "RCDRInterfaceConfig.h"
   #import "RCDRConfig.h"
   #import "RCDRBasicInformationService.h"
   #import "RCDRDeviceFileManagerService.h"
   #import "RCDRDeviceManagementService.h"
   #import "NSData+RCDR.h"
   #import "UIViewController+RCDR.h"
   #import "RCDRLoadingView.h"
   
   EOS

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  #s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  #s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.dependency 'AFNetworking', '~> 4.0.1'
  s.dependency 'YYModel', '~> 1.0.4'
  s.dependency 'Masonry', '~> 1.1.0'
  s.dependency 'MBProgressHUD', '~> 1.2.0'
  s.dependency 'IQKeyboardManager', '~> 6.5.12'
  s.dependency 'SDWebImage', '~> 5.17.0'
  s.dependency 'MJRefresh', '~> 3.7.5'
  s.dependency 'IJKMediaFramework'
  s.dependency 'MobileVLCKit'

end
