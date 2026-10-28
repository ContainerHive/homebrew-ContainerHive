class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.24.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.1/darwin-arm64.tar.zst"
      sha256 "c0f1e985020901c59fd98353f0d062e50fc7887534ed2f7ebe9ed3afd2190cfa"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.1/darwin-amd64.tar.zst"
      sha256 "194e97ee74e4f3d226286039ee49fa2fc16f0b53c37d4499cb4d3e85176147a5"
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
