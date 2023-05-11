Pod::Spec.new do |s|
  s.name             = 'bdn_flutter_ys7'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                      DESC
  s.homepage         = 'https://github.com/buiducnhat/bdn_flutter_ys7'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'buiducnhat' => 'nhaths4701@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'EZOpenSDK_iOS' ,'4.16.6'
  s.platform = :ios, '11.0'
  s.static_framework = true
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
