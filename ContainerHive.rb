class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.13.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.3/darwin-arm64.tar.zst"
      sha256 "624fcbc6467c9fc125d617932df59be26dfb44c9c84eeaf0034219e0a2d67d40"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.3/darwin-amd64.tar.zst"
      sha256 "fa3e9898941238fd7c09b7e1f046b5f83555b31cf3e78e714c17a0b3aa0cb355"
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
