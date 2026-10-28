class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.24.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.3/darwin-arm64.tar.zst"
      sha256 "71f93bb793a1db6ec2658f20dd6594fa541f78d10685389516214916afe9b880"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.3/darwin-amd64.tar.zst"
      sha256 "73da15edf25b62b24cec1be2b0f34bff03bed791525deb5fc3780e2523bfe329"
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
