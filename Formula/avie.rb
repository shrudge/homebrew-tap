class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  url "https://github.com/shrudge/avie/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "f1d1d8aabd22e3b7e6de1fb3cda9d7d0d14a2d37f8ae4f5879f2c1ac26f4cf3f"
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
