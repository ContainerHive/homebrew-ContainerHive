class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.23.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.23.1/darwin-arm64.tar.zst"
      sha256 "211562a1d5988ce144186e26ec35de9ec915330cc0f1afbe47d01ee4f0fa0566"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.23.1/darwin-amd64.tar.zst"
      sha256 "78c0031d13f6198cd0d26c00bf88c05137aaf287d98e54e0dcfbd78f139d1690"
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
