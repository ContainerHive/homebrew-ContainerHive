class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.7.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.1/darwin-arm64.tar.zst"
      sha256 "6674b0d3d08b83d3143b81551f97d96168416e5e1afae8dccc2600c055268adc"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.1/darwin-amd64.tar.zst"
      sha256 "dbf62b676dc74e304c2a5242bd6d58ccb5c291a93126f42d57593ee9e10eeb73"
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
