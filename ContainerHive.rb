class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.6"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.6/darwin-arm64.tar.zst"
      sha256 "f729a651ef9d95f491bf7a006b149a72fc2c2bfb37172dd1e9de59e7d0c5907d"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.6/darwin-amd64.tar.zst"
      sha256 "23ba3844830d19cc88b6db9fe574a9237e05d3af9ae2f4a52fb6bc7045fc6c2a"
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
