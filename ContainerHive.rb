class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.9.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.9.0/darwin-arm64.tar.zst"
      sha256 "fdc5bd969ad55a5d1823452144b2533c24c5a1c748f5836a8b10424aa9fbcb59"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.9.0/darwin-amd64.tar.zst"
      sha256 "66568f8c78d5cdf108beaf5f0b770be9da782844d7a1008af802dd0f491d31ab"
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
