class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.11"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.11/darwin-arm64.tar.zst"
      sha256 "0ae8133c7d6a21c4fbd1f4e91618955d446d42a9f48032a719a9788344e0fb24"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.11/darwin-amd64.tar.zst"
      sha256 "8a192ac3ec7f2c4b775c8b41cf26da76611c01a7ab86ade6d75306be80e1cc91"
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
