class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  

  url "https://github.com/shrudge/avie/releases/download/v1.0.6/avie.tar.gz"
  

  sha256 "0d9ba82cf2e4269d754261cc71ef8b710c300686e64c8b412a2a13a479ec1bd7"
  
  license "MIT"

  depends_on :macos

  def install

    bin.install "avie"
  end

  test do
    system "#{bin}/avie", "--version"
  end
end