class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.13.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.0/darwin-arm64.tar.zst"
      sha256 "a1b9b152ca7c471ff0322a71400ed6427328faddb57d750985e14a20428655de"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.13.0/darwin-amd64.tar.zst"
      sha256 "e6d6afd346dea0deddd0113d2117a3a492d67131a8d235d0ae3e312dac086a9b"
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
