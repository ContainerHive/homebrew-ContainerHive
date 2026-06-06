class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.2/darwin-arm64.tar.zst"
      sha256 "b7d995a6be879fc0e50a48395748ee342e526829e460d11626a6a8cc492441b1"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.2/darwin-amd64.tar.zst"
      sha256 "36383d0b69a892ebd1d7bd3eee9918c57e8f27bb091e83f1cc8c82b4b7785c17"
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
