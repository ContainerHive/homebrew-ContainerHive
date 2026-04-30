class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.12.5"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.5/darwin-arm64.tar.zst"
      sha256 "e75e204bf4073cf08e62ad03f0276c2e0cfce1627032b81b455d0e97cb6ea064"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.5/darwin-amd64.tar.zst"
      sha256 "dd4d562ce3cacf768f2e42ce506fd157c2259eb34365f6fd204c0bf7089a1fc3"
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
