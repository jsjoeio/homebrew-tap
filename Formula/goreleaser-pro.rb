# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserPro < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.184.0-pro"
  license "Copyright Becker Software LTDA"

  on_macos do
    url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.184.0-pro/goreleaser-pro_Darwin_all.tar.gz"
    sha256 "a8175771d8cc94f968749460dbcc7a6532212172b3ab549f255f847530eea5b3"

    def install
      bin.install "goreleaser"
      bash_completion.install "completions/goreleaser.bash" => "goreleaser"
      zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
      fish_completion.install "completions/goreleaser.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.184.0-pro/goreleaser-pro_Linux_armv6.tar.gz"
      sha256 "0ea34f1a9c8f5bb674dc7fd2de7f955e38c66d5bac8457e7e39102406e2b9884"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.184.0-pro/goreleaser-pro_Linux_arm64.tar.gz"
      sha256 "fc3100d09af70e35707d03ddca9ded854d7b0e48fd9b3a75a82b0eac743d1cfd"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.184.0-pro/goreleaser-pro_Linux_x86_64.tar.gz"
      sha256 "def0b9882e0fbb91727c73bcc033917c4562aa5f9e89317884faff2b114c6b9c"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  conflicts_with "goreleaser"

  test do
    system "#{bin}/goreleaser -v"
  end
end
