class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.10"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.10/darwin-arm64.tar.zst"
      sha256 "1368e4688de2c3130cd780884b607c300fd03a66b528105c1792ea131749ef35"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.10/darwin-amd64.tar.zst"
      sha256 "5d9fdeb5708ecfa6dfadd1d2a1d066753a0cb459f643c61ee74fca4c1fc80d42"
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
