class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.1/darwin-arm64.tar.zst"
      sha256 "861be2af6a889dcd3cde6918a69fae929172642b270693cdc06439126a8aa4a0"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.1/darwin-amd64.tar.zst"
      sha256 "eaf636594f047337bfd0a8b24b02c13f67a5c1fb8702d3f58c0039b4fff18327"
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
