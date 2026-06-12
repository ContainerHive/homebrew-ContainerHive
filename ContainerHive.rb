class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.3/darwin-arm64.tar.zst"
      sha256 "db32d1e46c0717445de02e93152952c2f046c9bd7f5aef680e64866b0320ec8c"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.3/darwin-amd64.tar.zst"
      sha256 "7e08950cd55a4e616a30c19e029effdb6e59a80b400f973b28bb404e45806ef6"
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
