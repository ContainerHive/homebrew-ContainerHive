class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.10.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.10.1/darwin-arm64.tar.zst"
      sha256 "c0a5d5bcfb7a1f9c3c1677aa4358e66f57d5469c948d4e9be453a0caf3cb98da"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.10.1/darwin-amd64.tar.zst"
      sha256 "38a03bfe74bc1b973b627fd42fb0ec6b80ff843e1da86605d57160344f2abbd0"
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
