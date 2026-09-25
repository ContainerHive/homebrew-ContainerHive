class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.8.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.2/darwin-arm64.tar.zst"
      sha256 "8ad00b14da640b9fc6652cd88c16311bcf0575d011a5e21ec899684d6f0b6efb"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.2/darwin-amd64.tar.zst"
      sha256 "c3d875ae5e7b6779bcf68995ea6357dac6b1c7cb2700b97ceab79129c9ee6fc3"
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
