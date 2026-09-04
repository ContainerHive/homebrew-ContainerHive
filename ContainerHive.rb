class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.2.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.2.1/darwin-arm64.tar.zst"
      sha256 "14db80d0cb6ba1469398ad26fd36ff403877c10ede0216e08eb1726926f995a7"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.2.1/darwin-amd64.tar.zst"
      sha256 "b7e93619549fd0fc63cb10694cd61da45e6b834542dc99cea87cd373992bd0d3"
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
