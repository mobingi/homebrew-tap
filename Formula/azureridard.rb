# This file was generated by GoReleaser. DO NOT EDIT.
class Azureridard < Formula
  desc "Service that detects new, updated and deleted RI for Azure."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.31"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.31/ouchantools_1.0.31_darwin_amd64.tar.gz"
    sha256 "c054a24e33cb990b978413d2be3c9888ac8addd3259d767c37b179765e6f1d52"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/ouchantools/releases/download/v1.0.31/ouchantools_1.0.31_linux_amd64.tar.gz"
      sha256 "71d7824f37eab062b922ab584c9677c630deb25b3fe3ec50887b30bfa5ea3efb"
    end
  end

  def install
    bin.install "azureridard"
  end

  test do
    assert_match /Service that detects new, updated and deleted RI for Azure/, shell_output("#{bin}/azureridard -h", 0)
  end
end
