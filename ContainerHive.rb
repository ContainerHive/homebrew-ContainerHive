class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.25.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.25.1/darwin-arm64.tar.zst"
      sha256 "39d57bca98d62d6746e477587171e1c529f0362ec02e4df559654d5375e65609"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.25.1/darwin-amd64.tar.zst"
      sha256 "bc622d90449384c220437e02a30e7601cc897357125516ae0123cc66e9165f64"
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
