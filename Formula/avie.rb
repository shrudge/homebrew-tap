class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  

  url "https://github.com/shrudge/avie/releases/download/v1.0.5/avie.tar.gz"
  

  sha256 "0852194f98d9fbbe85bc39b8d6698034aabd1773200ac8ea26dae16225697a76"
  
  license "MIT"

  depends_on :macos

  def install

    bin.install "avie"
  end

  test do
    system "#{bin}/avie", "--version"
  end
end