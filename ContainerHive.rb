class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.6.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.6.0/darwin-arm64.tar.zst"
      sha256 "bbb50e6035f08ee3d4180484b2b314d3a0e3e6699f72e3c6378f13eaf36c9f93"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.6.0/darwin-amd64.tar.zst"
      sha256 "a10d36cb5ead0391a9e85b12c8506b4f982d2b69277755e709d0ada1674a97d5"
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
