class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  url "https://github.com/shrudge/avie/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "YOUR_NEW_HASH_HERE"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/avie"
  end

  test do
    system "#{bin}/avie", "--version"
  end
end
