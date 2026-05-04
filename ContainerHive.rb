class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.17.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.17.0/darwin-arm64.tar.zst"
      sha256 "fda159d89253fe000fb467ec65624d91c833d3127a1ad1c17eed61e3e10ced0d"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.17.0/darwin-amd64.tar.zst"
      sha256 "66d61af661eefa84ff27a944f75621f004168a3241c7ac88a8a74097815ef9e9"
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
