# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.161.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.1/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "876452586c56bf3321f4c7681216049e63a99c286caa24eba338a66882296732"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.1/goreleaser_Darwin_arm64.tar.gz"
    sha256 "282f19e7009f434a9209b0811e973a8c1aebc6bd2b03da3a3f9ec4a462bb92e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.1/goreleaser_Linux_x86_64.tar.gz"
    sha256 "a001c4f20c79db20f46f66a4ee3752a83bc544f3c87cc1e5016d788e05eb99ba"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.1/goreleaser_Linux_armv6.tar.gz"
    sha256 "d02de1d0472f8e9490cc06a42d187838fb042fee9a1e27f3708879ddd7dd3c97"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.161.1/goreleaser_Linux_arm64.tar.gz"
    sha256 "64582902050411062800f2cb7ec2deb7a8fb6505d291460721f53e484adeea2d"
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
