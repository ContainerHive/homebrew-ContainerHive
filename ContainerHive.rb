class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.7"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.7/darwin-arm64.tar.zst"
      sha256 "85bf95026bd3333ecd6ad2c27695ce0ad642aa9c8ee953943f96a9d66faf48a2"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.7/darwin-amd64.tar.zst"
      sha256 "445748d548d78b5f2b75d65a80e3fb6470a80a393d7cb3f85a3a51cde31ac257"
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
