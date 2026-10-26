class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.23.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.23.0/darwin-arm64.tar.zst"
      sha256 "7a65969d52306657ddee9b2d15ccb89cbb3412174d3c27ccbb3370d7f4507bd8"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.23.0/darwin-amd64.tar.zst"
      sha256 "544e2372077d5684449c3a651a40b659b59f3b8b557c7c9e26eb130482b48cb1"
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
