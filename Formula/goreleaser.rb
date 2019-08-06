# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.114.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.114.0/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "c758ad01e9ccc2653c521f85b694ce1891da5c27602d2bfac8e149c002381f88"
  elsif OS.linux?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.114.0/goreleaser_Linux_x86_64.tar.gz"
    sha256 "cbe4dfcbebc7bb191b279aa48a765d2a098f3295a4b5d7b31c99bb6b1acff973"
  end

  def install
    bin.install "goreleaser"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
