class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.13.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.2/darwin-arm64.tar.zst"
      sha256 "8ff5c1f65fa12c0d04329ff007899a89b72d7412343161a5d7564323d515a478"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.2/darwin-amd64.tar.zst"
      sha256 "326d8a2bbf848a2cdaaa5d8042374cdc5d9f2aa486aefad98baf389b72b6638b"
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
