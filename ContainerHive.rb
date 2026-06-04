class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.20.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.20.0/darwin-arm64.tar.zst"
      sha256 "de753fb9aa23d2a5eb03f58912976cb2db8f1ebd4f9c3421d613229039bed4cc"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.20.0/darwin-amd64.tar.zst"
      sha256 "d416652d4a00bae89f593d01ab36f4b3cf0a5f74478e93c0f806b5a0e1d232a8"
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
