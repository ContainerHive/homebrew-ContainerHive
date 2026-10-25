class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.19.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.19.0/darwin-arm64.tar.zst"
      sha256 "ab2cfa3afb19a6ffe7eb0dc5a625d7f978054bec87e29732138f1ff10875b967"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.19.0/darwin-amd64.tar.zst"
      sha256 "b8a95262b7265dd4c03e6bcb57d0ff9e50e086f2d8794a8194cf51d6fa29d4a8"
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
