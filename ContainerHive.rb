class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.2/darwin-arm64.tar.zst"
      sha256 "223ed0ecc3a686d988846c81258347844d1a92cf0ee916dcc531e712292fbc15"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.2/darwin-amd64.tar.zst"
      sha256 "498755d19336485e366fa9579f5691bdc55f0d3de504ccbf173e7ae37ca29a75"
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
