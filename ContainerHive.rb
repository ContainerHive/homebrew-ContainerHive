class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.17.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.17.2/darwin-arm64.tar.zst"
      sha256 "414f5b74d7d58ffe74e010ca8ba9e015e37b14c62df364efc59667a6d6eab5fd"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.17.2/darwin-amd64.tar.zst"
      sha256 "a784d27d518e786c4a7f88fb30a5b4fc03d16a996194c4233e008fb9c033b85b"
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
