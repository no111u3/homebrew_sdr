class Cubicsdr < Formula
  homepage 'https://github.com/cjcliffe/CubicSDR'
  head 'https://github.com/cjcliffe/CubicSDR.git'

  depends_on "pkg-config" => :build
  depends_on 'cmake' => :build
  depends_on 'libusb'
  depends_on 'soapysdr'
  depends_on 'wxwidgets'

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args, "-DCMAKE_BUILD_TYPE=Release -DBUNDLE_APP=1 -DCPACK_BINARY_DRAGNDROP=1"
      system "make"
      system "ls -al"
      system "codesign --force --deep --sign - x64/CubicSDR.app"
      system "make install"
    end
  end
end