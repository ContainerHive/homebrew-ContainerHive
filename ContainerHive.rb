class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.18.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.2/darwin-arm64.tar.zst"
      sha256 "621ba15c5e0c00013e86e7d8273cab07cd724563536f4d31a11f3d4a95460ca1"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.2/darwin-amd64.tar.zst"
      sha256 "f016f9194907affbbbfe38f3b63cf87da9c2d882d608c06ec8bfe1214e0b06d5"
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
