class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "2.0.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v2.0.1/darwin-arm64.tar.zst"
      sha256 "ea29dc2d00750e984358e33c349153eb9bf0accffa5db1350a593759d3be49e3"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v2.0.1/darwin-amd64.tar.zst"
      sha256 "f6c57144e5087aaea956b212985d880b3040d61eb20d3bfef9502441a7c07515"
    end
  end

  def install
    bin.install "ch"
    prefix.install "LICENSE.txt", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ch --version")
  end
end
