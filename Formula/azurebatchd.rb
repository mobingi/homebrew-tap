# This file was generated by GoReleaser. DO NOT EDIT.
class Azurebatchd < Formula
  desc "Batch binary for Ripple/Wave for Azure."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.42"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.42/ouchantools_1.0.42_darwin_amd64.tar.gz"
    sha256 "5ae576327b591d85a1a16e72124b2b2261da3f2d7de5eb5d00214de3f5f5c06e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.42/ouchantools_1.0.42_linux_amd64.tar.gz"
    sha256 "0ad27c4e2fffac78fe8e406c08ad38a2587736b118635f45d1cc07fc07801342"
  end

  def install
    bin.install "azurebatchd"
  end

  test do
    assert_match /Wave/, shell_output("#{bin}/azurebatchd -h", 0)
  end
end
