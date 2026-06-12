class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.4/darwin-arm64.tar.zst"
      sha256 "98777b90ea3813c778ddb2207c125813258f3446fd5126e912100853c3d7c67d"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.4/darwin-amd64.tar.zst"
      sha256 "04c1e23fd2fc4617b828e83bfbe7b6a6ff5ccda03818d6c786c15b8061b39a3a"
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
