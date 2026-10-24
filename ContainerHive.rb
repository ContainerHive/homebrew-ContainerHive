class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.15.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.15.1/darwin-arm64.tar.zst"
      sha256 "912c4c4855d2580db7738f1d7c2101abc0a845e3c3e9fc34bb998e5485e1201b"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.15.1/darwin-amd64.tar.zst"
      sha256 "91ed20d43e89b202633299bf11767419891f6f1f08443593afaa6ce5d53bfe45"
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
