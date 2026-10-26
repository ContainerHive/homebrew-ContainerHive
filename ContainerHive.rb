class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.22.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.22.0/darwin-arm64.tar.zst"
      sha256 "7644f0b96ae7896a6b4e189deaea256882097da78c91e8ebdf0d7f1eb026d865"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.22.0/darwin-amd64.tar.zst"
      sha256 "11df8c620d4c39fe7a4838200c3e25c3509f437046268444919922e8ccc1c053"
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
