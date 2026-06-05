class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.1/darwin-arm64.tar.zst"
      sha256 "5db765cc969faec7cc96e09bc614823590ab508786c6fed8d19e8bebb7c85184"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.1/darwin-amd64.tar.zst"
      sha256 "fb7b631d8749d370606c558a9279fc732fd6ba32a68f4ced54948f2ff5d74f42"
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
