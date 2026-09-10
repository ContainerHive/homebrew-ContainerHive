class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.7.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.2/darwin-arm64.tar.zst"
      sha256 "8537e99e7cbbd2d63b68bcb3091a898672abcc6449e379750d790f8beaf21fda"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.2/darwin-amd64.tar.zst"
      sha256 "4df62e250ad0cc83c433da6b6b5f3120baf5e5f8d465413030dfcb8dfe26847c"
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
