class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.0.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.1/darwin-arm64.tar.zst"
      sha256 "25ddeacc887c67ca07321976d0f814838928e1ec1bed31d630a858977388a456"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.0.1/darwin-amd64.tar.zst"
      sha256 "80c32c6b7c508927f7b331f4a947294771bb750451cc74a7f16e1e23085b6835"
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
