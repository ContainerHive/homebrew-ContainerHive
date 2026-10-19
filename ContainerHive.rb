class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.13.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.1/darwin-arm64.tar.zst"
      sha256 "ec5f6612ff6dc3892cf8ed77df04b89c00c698aa20e7c2154c2035e747a0230b"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.1/darwin-amd64.tar.zst"
      sha256 "574187ee692867a17eb429e6cbc5b741953146c418a49770771035d7be259d74"
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
