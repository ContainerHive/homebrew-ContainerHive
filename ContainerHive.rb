class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.10.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.10.0/darwin-arm64.tar.zst"
      sha256 "2bdcdccab8b5e258db4f3bd8e19b96977c1913cd17f3e16a456896c4f8eac804"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.10.0/darwin-amd64.tar.zst"
      sha256 "d7617d6776dd7a0da8ed6dfd352b896786c602098e2a91678078c92c237970e6"
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
