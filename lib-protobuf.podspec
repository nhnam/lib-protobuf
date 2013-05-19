Pod::Spec.new do |s|
  s.name         = "lib-protobuf"
  s.version      = "2.5.0"
  s.summary      = "Protobuf library for iOS."
  s.author       = { "goofansu" => "goofan.su@gmail.com" }
  s.source       = { :git => "git://github.com/goofansu/lib-protobuf.git",
                     :tag => "#{s.version}" }

  s.requires_arc = false
  s.source_files = 'config.h'

  s.subspec 'Core' do |core|
    core.header_dir = 'google/protobuf'
    core.source_files = 'google/protobuf/*.{h,cc}'
  end

  s.subspec 'Stubs' do |stubs|
    stubs.header_dir = 'google/protobuf/stubs'
    stubs.source_files = 'google/protobuf/stubs/*.{h,cc}'
  end

  s.subspec 'IO' do |io|
    io.header_dir = 'google/protobuf/io'
    io.source_files = 'google/protobuf/io/*.{h,cc}'
  end

  s.subspec 'Testing' do |testing|
    testing.header_dir = 'google/protobuf/testing'
    testing.source_files = 'google/protobuf/testing/*.{h,cc}'
  end

  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => "$(SRCROOT)/../../Downloads/protobuf-2.5.0/src" }

end
