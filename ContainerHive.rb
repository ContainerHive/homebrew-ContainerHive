class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.14"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.14/darwin-arm64.tar.zst"
      sha256 "d3c7fbb2745dcd6390d2e33f3b8851a5d51d8ce31d31fd263d822e86495e9dda"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.14/darwin-amd64.tar.zst"
      sha256 "1025c96b2fe699a53e9a31246f4ca92584eedb910e4f8377a5e808667a07b39b"
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
