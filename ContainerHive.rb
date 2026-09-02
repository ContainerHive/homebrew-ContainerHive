class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.2/darwin-arm64.tar.zst"
      sha256 "0eb93d6522aa0d977e8be56f92e33555c92914ea6635e4e8168acbcbbfbac31f"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.2/darwin-amd64.tar.zst"
      sha256 "dc5db72369d8e0b5e4c040d4b789812d226b631e2a475e108293a218c8ed7557"
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
