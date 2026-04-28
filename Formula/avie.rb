class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  url "https://github.com/shrudge/avie/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "258e225ade31b29ce2c42d7fe20839f566fc83665676d4cb4700df045ac68f48"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on :macos

  def install
    inreplace "Sources/AvieCore/Version.swift", 
              /public let avieToolVersion = .*/, 
              "public let avieToolVersion = \"#{version}\""

    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/avie"
  end

  test do
    system "#{bin}/avie", "--version"
  end
end
