class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.18.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.1/darwin-arm64.tar.zst"
      sha256 "a742b8b22f6d0a219f5571da9f437d59952ffaa6af1f6acb6084625da4d72a13"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.1/darwin-amd64.tar.zst"
      sha256 "25461318f5de15a0d27a4a6362eabb0a04f33187ebcb0c8170a3a1f4e1302fca"
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
