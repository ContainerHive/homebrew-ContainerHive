class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.10"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.10/darwin-arm64.tar.zst"
      sha256 "9e9bda6d991bc886bc0c85b6758810e78c18a7ab28b14dd775ae3b76abff12b2"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.10/darwin-amd64.tar.zst"
      sha256 "28c98e5f3117d19f2a24cf518ea7696780742a55ae336d6021d30ece9a4ac488"
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
