# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is a simple, 0-dependencies, deb, rpm and apk packager."
  homepage "https://nfpm.goreleaser.com"
  version "2.7.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.7.1/nfpm_2.7.1_Darwin_arm64.tar.gz"
      sha256 "aab245e414edfc8efe976292cb08a52b0ec1fd2f81214615d132c2ed68d34f95"
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.7.1/nfpm_2.7.1_Darwin_x86_64.tar.gz"
      sha256 "6d8ec6285703ffdd755440540782acf696d91f3a84cda242d0c13910337ebac5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.7.1/nfpm_2.7.1_Linux_arm64.tar.gz"
      sha256 "258426c7be38d363de330353bdeff30fb4d55b0dc5ba27da663413a2b6326d6e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.7.1/nfpm_2.7.1_Linux_x86_64.tar.gz"
      sha256 "32e2152c6c84f292206934153d536e5999213faf35795510c5085db11b04372c"
    end
  end

  def install
    bin.install "nfpm"
    bash_completion.install "completions/nfpm.bash" => "nfpm"
    zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
    fish_completion.install "completions/nfpm.fish"
  end

  test do
    system "#{bin}/nfpm -v"
  end
end
