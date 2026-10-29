class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.26.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.26.0/darwin-arm64.tar.zst"
      sha256 "df80b89bfacdd5694f1b1d2415f31531e290b97d3dd1ca2c6c4f3bb22e4fd2c2"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.26.0/darwin-amd64.tar.zst"
      sha256 "f33aff80cdf82e87c45dc492d164f44de4d875d019f00ebed073fec58d89ffc8"
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
