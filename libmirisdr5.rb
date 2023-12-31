class Libmirisdr5 < Formula
  homepage 'https://github.com/ericek111/libmirisdr-5'
  head 'https://github.com/ericek111/libmirisdr-5.git'

  depends_on "pkg-config" => :build
  depends_on 'cmake' => :build
  depends_on 'libusb'

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system 'make install'
    end
  end
end