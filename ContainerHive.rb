class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.19.5"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.5/darwin-arm64.tar.zst"
      sha256 "0722c5c7fc8ae4e4a83bbe85366b8cf766769ca12c7fa12b5bb1185c1717b779"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.5/darwin-amd64.tar.zst"
      sha256 "9596c56689740a5ace5fa8435237aa59b789c113306706960bc09ec1af6a49a3"
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
