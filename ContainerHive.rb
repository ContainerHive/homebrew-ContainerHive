class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.5"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.5/darwin-arm64.tar.zst"
      sha256 "8d924b8710c971592cf7600ece7da8aeaa7bac122930bb709a326aca8fb9778b"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.5/darwin-amd64.tar.zst"
      sha256 "6e52eb6c719a149545416ac40d2d4f39fc61a28a092c13021054cda53057e073"
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
