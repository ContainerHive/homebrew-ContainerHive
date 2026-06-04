class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.0/darwin-arm64.tar.zst"
      sha256 "b299d08f39d9e1f142ac62c8ac46419834be3469d4f74aba27eb566c9fe7986d"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.0/darwin-amd64.tar.zst"
      sha256 "a4120aa1c4a25fbc2268160c361005dc80217a7f3b72a7bc0f11a4a71e0bc7c1"
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
