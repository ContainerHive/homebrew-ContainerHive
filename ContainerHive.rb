class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.14.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.14.0/darwin-arm64.tar.zst"
      sha256 "db3c1630ab2e207ae0eb99da1a1f57b648888229ef8ba362971cdf1140339de6"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.14.0/darwin-amd64.tar.zst"
      sha256 "d582130c67b6ea2e9d0236af1618a68ca6f244eb56f66dafe8cb38597a1f3fb5"
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
