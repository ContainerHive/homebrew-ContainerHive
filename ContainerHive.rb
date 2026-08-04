class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.0.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.3/darwin-arm64.tar.zst"
      sha256 "02ef33a2c51b169d77445c402b242a6ceb043b976be85e7f70799d0815b13bf5"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.3/darwin-amd64.tar.zst"
      sha256 "060b0cb9c653be6f85ff2dd0655b653fc11a9836a7bc55c70b18dfaf30a194ea"
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
