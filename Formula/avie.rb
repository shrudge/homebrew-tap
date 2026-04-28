class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  

  url "https://github.com/shrudge/avie/releases/download/v1.0.3/avie.tar.gz"
  

  sha256 "258e225ade31b29ce2c42d7fe20839f566fc83665676d4cb4700df045ac68f48"
  
  license "MIT"

  depends_on :macos

  def install

    bin.install "avie"
  end

  test do
    system "#{bin}/avie", "--version"
  end
end