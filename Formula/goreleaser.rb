# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.182.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.182.1/goreleaser_Darwin_all.tar.gz"
    sha256 "748cf9064af38f19d3a6ab09b885ae21042c686fc4a1e5e1f8e7a0d1dc261816"
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.182.1/goreleaser_Linux_arm64.tar.gz"
      sha256 "82f3dc1ade900799792a4516161f615d9af2a929efdc7edbff4904933900d6c8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.182.1/goreleaser_Linux_x86_64.tar.gz"
      sha256 "bb0b3a96bb38ba86fb3f363d303ce6079c04ada2797a892bed2e2a61ad41daf2"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.182.1/goreleaser_Linux_armv6.tar.gz"
      sha256 "35abb51839df6d04b3c7979e299dd4540b50addc39015b89de177e98259f0b95"
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  def install
    bin.install "goreleaser"
    bash_completion.install "completions/goreleaser.bash" => "goreleaser"
    zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
    fish_completion.install "completions/goreleaser.fish"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
