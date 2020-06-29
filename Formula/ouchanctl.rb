# This file was generated by GoReleaser. DO NOT EDIT.
class Ouchanctl < Formula
  desc "Build tool for ouchan monorepo."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.26"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.26/ouchantools_1.0.26_darwin_amd64.tar.gz"
    sha256 "0681a634583bf8301723008260f842e7a619589a1eae2fd4a019ace5681c72d5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/ouchantools/releases/download/v1.0.26/ouchantools_1.0.26_linux_amd64.tar.gz"
      sha256 "b82e19b783dd6abd8e12a9a750f8fb0b2a9713f8c0e813cd238c5aebade2fa46"
    end
  end

  def install
    bin.install "ouchanctl"
  end

  test do
    assert_match /Build tool for ouchan/, shell_output("#{bin}/ouchanctl -h", 0)
  end
end
