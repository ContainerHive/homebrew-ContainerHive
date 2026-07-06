class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.12"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.12/darwin-arm64.tar.zst"
      sha256 "2216706318092bbd21bbd1396f749935c49ea720c8088fb9a687934820f0eacf"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.12/darwin-amd64.tar.zst"
      sha256 "2329c4651e443fbf1db1db08efa45438cb38ef19bf62ebceeed4b3a1f00b9b9b"
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
