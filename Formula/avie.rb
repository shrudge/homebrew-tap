class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  

  url "https://github.com/shrudge/avie/releases/download/v1.0.4/avie.tar.gz"
  

  sha256 "8530681465803e746576f795137614de99e4f908dd2ae98bc682ba11711b05fb"
  
  license "MIT"

  depends_on :macos

  def install

    bin.install "avie"
  end

  test do
    system "#{bin}/avie", "--version"
  end
end