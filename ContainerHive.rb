class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.13.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.13.2/darwin-arm64.tar.zst"
      sha256 "f94ad33a0d6b6448433cb29dda885bd0269d65d95202cbb6e80f8857219a7d91"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.13.2/darwin-amd64.tar.zst"
      sha256 "e672ea2d45b81418534fd83a0825b1f5be30e1f0ac88fd3724858e7d27a0b460"
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
