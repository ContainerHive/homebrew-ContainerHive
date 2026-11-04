class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.3/darwin-arm64.tar.zst"
      sha256 "e1277ccae82498cdd8e2c0083f9048f85b744c1022b9851ed3c902a29d563a2e"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.3/darwin-amd64.tar.zst"
      sha256 "bd7f68a91f75c95e6c0761fb5e25135ce4a6a35bde851b04a03adc942e6a9da1"
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
