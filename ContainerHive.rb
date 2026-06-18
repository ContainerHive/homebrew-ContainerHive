class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.6"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.6/darwin-arm64.tar.zst"
      sha256 "ad071d615762dff4b8ea04925b6cb4c9842864a8cadde2632df231945cad2486"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.6/darwin-amd64.tar.zst"
      sha256 "696bdfdbd914e51ae716554f8fc59ef07c82ff5758d7d70dfa922abd73efcf7e"
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
