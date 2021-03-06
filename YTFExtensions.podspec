Pod::Spec.new do |s|
  s.platform = :ios
  s.name     = 'YTFExtensions'
  s.version  = '0.3.0'
  s.license  = 'MIT'
  s.summary  = 'YTFExtensions - extensions and categories.'
  s.homepage = 'https://github.com/yetithefoot/YTFExtensions'
  s.authors  = {'YetiTheFoot' => 'reg.yeti@gmail.com', 'Mikhail Merkulov' => 'mihail.merkulov@gmail.com'}
  s.source   = { :git => 'https://github.com/yetithefoot/YTFExtensions.git', :tag => '0.3.0'}
  s.source_files = 'YTFExtensions/*'
  s.requires_arc = true

  s.framework = 'UIKit', 'Foundation', 'QuartzCore', 'CoreData', 'CoreGraphics'
  s.prefix_header_contents = '#import <UIKit/UIKit.h>', '#import <Foundation/Foundation.h>', '#import <QuartzCore/QuartzCore.h>', '#import <CoreData/CoreData.h>', '#import <CoreGraphics/CoreGraphics.h>'
end