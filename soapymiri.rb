class Soapymiri < Formula
  homepage 'https://github.com/ericek111/SoapyMiri'
  head 'https://github.com/ericek111/SoapyMiri.git', branch: "main"

  depends_on "pkg-config" => :build
  depends_on 'cmake' => :build
  depends_on 'libusb'
  depends_on 'libmirisdr5'
  depends_on 'soapysdr'

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system 'make install'
    end
  end
end