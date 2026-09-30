class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.9.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.9.1/darwin-arm64.tar.zst"
      sha256 "1b63ffc4411a7a6a78f09c7ade4910ad70fe4d539788281d4d4c3e543d930307"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.9.1/darwin-amd64.tar.zst"
      sha256 "2d86d0584ece7e913553cc0c158a12a27b36f737bc032f7d7627ae9046061eb5"
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
