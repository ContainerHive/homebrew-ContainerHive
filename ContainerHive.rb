class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.13.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.13.1/darwin-arm64.tar.zst"
      sha256 "42be7d039a5a4d82f2459f6d437dda13c3585c1fdde11cba0cfd55d893faf56e"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.13.1/darwin-amd64.tar.zst"
      sha256 "d0971710f06cc54f06e6fe0c8d6a0907b7b5e405745e3c6a41e71861b8adc428"
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
