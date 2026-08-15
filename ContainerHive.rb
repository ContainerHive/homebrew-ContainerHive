class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.0.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.4/darwin-arm64.tar.zst"
      sha256 "055229ec8c12ccc762ec8da851b6291830c5327827d23e2693108199dd42d649"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.4/darwin-amd64.tar.zst"
      sha256 "581297266e6f06cdbc333ee7ad35ba07038bf17012d8b807807783e36a1076ba"
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
