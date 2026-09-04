class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.3.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.3.0/darwin-arm64.tar.zst"
      sha256 "3fc7f8e941e0fd64a549ea35ea5db60227ec5201a301904e742287e3cd4efdef"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.3.0/darwin-amd64.tar.zst"
      sha256 "7ebdef643fab0365045929e4602bc47427b946096b2f9d25aba30578a4667b34"
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
