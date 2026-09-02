class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.1/darwin-arm64.tar.zst"
      sha256 "d45aa40b50818057bbc554a546e2d57391c156fcdf66eabaaa2ea3f3fb211da0"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.1/darwin-amd64.tar.zst"
      sha256 "bb20b3e119034ba09017fc462689a121d19a191349acab1d37b130e541684987"
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
