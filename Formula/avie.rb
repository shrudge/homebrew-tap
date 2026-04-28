class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  

  url "https://github.com/shrudge/avie/releases/download/v1.0.3/avie.tar.gz"
  

  sha256 "6f566c6ffee3ca8013d4b9a80d70d363d9ef83d45b72a0068ffe330e2348e8a5"
  
  license "MIT"

  depends_on :macos

  def install

    bin.install "avie"
  end

  test do
    system "#{bin}/avie", "--version"
  end
end