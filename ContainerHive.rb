class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.7.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.0/darwin-arm64.tar.zst"
      sha256 "518e43f6aa6878b51c5aaa57bc5cdf34430330480d3a396f285b369f2fd24e8d"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.0/darwin-amd64.tar.zst"
      sha256 "881ed772116fdc0213f0ab279bbe767fee1293985e8d9b94481a4d62ddd8f8c1"
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
