class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.19.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.2/darwin-arm64.tar.zst"
      sha256 "8795920437239b92bab4724c4b8a52a1a10205864e036c8f66f6f0652645fd42"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.2/darwin-amd64.tar.zst"
      sha256 "76396a5adc2e3ec5d6aa27bfe81b9bf15273b2e2c31b6d02db64c7a7b8fc0a86"
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
