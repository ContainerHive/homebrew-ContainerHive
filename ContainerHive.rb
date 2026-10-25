class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.20.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.20.0/darwin-arm64.tar.zst"
      sha256 "2bc4dd64b0cc38dd27d44b240fbbeaffd6244969128c785ad75bd5c37841c928"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.20.0/darwin-amd64.tar.zst"
      sha256 "f8f6d8bc665e44dceb3f5f788f2cf1ce71e5b3eb7a2c3bd65a9b771abddcdc2e"
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
