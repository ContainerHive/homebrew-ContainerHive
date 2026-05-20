class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.19.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.1/darwin-arm64.tar.zst"
      sha256 "3836e003d4751213cdfc3993e5b58b95c6c7dac4c48cf8657fa5ec6231f610de"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.1/darwin-amd64.tar.zst"
      sha256 "d5ab21e3ee15dc8997175630ff505fe6eb88cfa2a13d99e53e6c71ae53fbf19e"
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
