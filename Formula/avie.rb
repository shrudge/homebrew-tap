class Avie < Formula
  desc "Swift package graph diagnostics tool"
  homepage "https://github.com/shrudge/avie"
  url "https://github.com/shrudge/avie/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "e781021ff99aa73af32fe7dadaaa0b61b4dd1e08b41e2a2fc001ba628ad74df3"
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
