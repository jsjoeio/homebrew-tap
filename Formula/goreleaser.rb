# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.155.1"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.155.1/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "8965c8e809a6b291aaa253d25230252d560bcd184da7b361146034a5c153e5e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.155.1/goreleaser_Linux_x86_64.tar.gz"
    sha256 "26fe70e8bd298d6ee88f4182fa761467f89c8b06ac1e31682ed191593e867a17"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.155.1/goreleaser_Linux_armv6.tar.gz"
    sha256 "b9941fa4f3956ee8337355e4ab7030ff55ded0a9d9207c85c9d748f84a92fbe1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.155.1/goreleaser_Linux_arm64.tar.gz"
    sha256 "8278220f0d9eb272f39df7dad76c1dcb23ce63198ea9aca00978a70255e0c7ed"
  end

  depends_on "go"

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
