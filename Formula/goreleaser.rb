# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.184.0"
  license "MIT"

  on_macos do
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.184.0/goreleaser_Darwin_all.tar.gz"
    sha256 "97a01fae41173e8387a28a54ef4a054f37ccbd3e384fcf88434a9ed3e0200aa9"

    def install
      bin.install "goreleaser"
      bash_completion.install "completions/goreleaser.bash" => "goreleaser"
      zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
      fish_completion.install "completions/goreleaser.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.184.0/goreleaser_Linux_armv6.tar.gz"
      sha256 "300ca8acb169b4c310f90c9f1d18951f07b3bbae17521bcf10983f457194e262"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.184.0/goreleaser_Linux_arm64.tar.gz"
      sha256 "753aa935ceb11e259b240c4188ee26cda201aa83096821222f848ccae41a0525"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.184.0/goreleaser_Linux_x86_64.tar.gz"
      sha256 "0972c17d94f2a95aafbef0c9f6d01ea774abfb8d37b85778e8cb4885efc24511"

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

  conflicts_with "goreleaser-pro"

  test do
    system "#{bin}/goreleaser -v"
  end
end
