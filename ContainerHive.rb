class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.5.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.5.0/darwin-arm64.tar.zst"
      sha256 "595202c3e059dd252a4969d93296799d7aa303e2ee27ee91771ae1c03060d7bf"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.5.0/darwin-amd64.tar.zst"
      sha256 "c194808f0a04e26d351cf34f5e172b3ad67830c7dfc3fb16f3e436729f45bd33"
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
