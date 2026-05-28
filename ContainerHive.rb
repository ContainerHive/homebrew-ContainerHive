class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.19.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.4/darwin-arm64.tar.zst"
      sha256 "38429bda24473affb71105d5e4243f51cc9d89a15b448c8374fea08aeb16e5b4"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.4/darwin-amd64.tar.zst"
      sha256 "6a607fc11d151b9caf8fd6e52d965fabfb1d142ce840c712bb26b687318b7c74"
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
