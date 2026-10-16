class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.8"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.8/darwin-arm64.tar.zst"
      sha256 "427f7b01ec61d0679fcfa5aef00d86d1875337ad69e3ba2ea9fd546e48224ee8"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.8/darwin-amd64.tar.zst"
      sha256 "980ad520061f2a9ee72d23af7cbf66bdf0754e7d9255e84d5edce83502156c45"
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
