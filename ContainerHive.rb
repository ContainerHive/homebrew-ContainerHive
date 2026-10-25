class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.20.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.20.1/darwin-arm64.tar.zst"
      sha256 "edd066c06f933f1cef4e15e57c1491225555c598dd3c5dfc29a37be58634a047"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.20.1/darwin-amd64.tar.zst"
      sha256 "1255a31f0135d9f95f47bd24c17b66006fd7fb08868facf3fcdee85051ab683e"
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
