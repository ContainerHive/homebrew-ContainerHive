class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.19.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.3/darwin-arm64.tar.zst"
      sha256 "99a77c03874b7b7b29217e432deeb0cda392c0ea1fdfbe13822b149543ce75a4"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.3/darwin-amd64.tar.zst"
      sha256 "d02d43a0cd25d5c73c526dd60d36f1b0294149f13165c3cf4f96c061282cc877"
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
