class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.17.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.17.0/darwin-arm64.tar.zst"
      sha256 "01700d9103ec4eb3ce69902f0798ce83f401feb1f061b206fddd2d4e0520c366"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.17.0/darwin-amd64.tar.zst"
      sha256 "61c80a1319d9b2ab54b04dd59f22572375473fc7e9656d1cd4bde00b41f511ca"
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
