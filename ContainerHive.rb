class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.11"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.11/darwin-arm64.tar.zst"
      sha256 "1b53f3c7078685531510ae322438b215568c5d886f1e4e8ee60005dbb977a971"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.11/darwin-amd64.tar.zst"
      sha256 "925fc610a1a0159638865161218bc7c206c4bae413a585488033960ffabd6750"
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
