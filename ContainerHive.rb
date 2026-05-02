class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.15.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.15.0/darwin-arm64.tar.zst"
      sha256 "cccfa60c1c3cb202e3fd2ef297767d4edc5f583e18c78d9ae4694b72c93fb0ab"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.15.0/darwin-amd64.tar.zst"
      sha256 "fca7184c0d80f22cd2caae07f2adf122b66e1daa48728366dc6f6942211ad4d9"
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
