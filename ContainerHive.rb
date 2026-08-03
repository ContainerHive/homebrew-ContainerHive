class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.0.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.2/darwin-arm64.tar.zst"
      sha256 "211de6933d0874854eeca0afde02ab4cf74f467cc1ed78b07556def13195775b"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.2/darwin-amd64.tar.zst"
      sha256 "7b664673cbe0a2c301444a0a4fb603fda455cb0f89088eece8fbf4779ef0870e"
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
