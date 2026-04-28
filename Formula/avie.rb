class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  url "https://github.com/shrudge/avie/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a966f8afe5fc2f534e59ff0c5ffb8eaceafddcd455fc8aa2a6eb7fd84f65dca1"
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
