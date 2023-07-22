cask 'cubicsdr_new' do
  homepage 'https://github.com/cjcliffe/CubicSDR'
  url 'https://github.com/cjcliffe/CubicSDR.git'

  depends_on "pkg-config" => :build
  depends_on 'cmake' => :build
  depends_on 'libusb'
  depends_on 'soapysdr'
  depends_on 'wxwidgets'

  app "CubicSDR_new"
end