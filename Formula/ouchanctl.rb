# This file was generated by GoReleaser. DO NOT EDIT.
class Ouchanctl < Formula
  desc "Build tool for ouchan monorepo."
  homepage "https://github.com/mobingilabs/ouchan"
  version "1.0.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingilabs/ouchan/releases/download/v1.0.20/ouchan_1.0.20_darwin_amd64.tar.gz"
    sha256 "82eb14e4f3f1aede1cacc8076aadb6544be501e07b04e3f534cca948d6b2172d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingilabs/ouchan/releases/download/v1.0.20/ouchan_1.0.20_linux_amd64.tar.gz"
      sha256 "bf697173d03f875b1ec9f7fe89f9368625e5f2db6ce68735dd20c9041d5fa115"
    end
  end

  def install
    bin.install "ouchanctl"
  end

  test do
    assert_match /Build tool for ouchan/, shell_output("#{bin}/ouchanctl -h", 0)
  end
end
