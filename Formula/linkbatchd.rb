# This file was generated by GoReleaser. DO NOT EDIT.
class Linkbatchd < Formula
  desc "Batch binary for Ripple/Wave for AWS."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.45"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.45/ouchantools_1.0.45_darwin_amd64.tar.gz"
    sha256 "e2066283e517d7ce0e2bc19af9de3a635b988070c8f19291d6c35c73f3a93757"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.45/ouchantools_1.0.45_linux_amd64.tar.gz"
    sha256 "2f4a20314f98d7d3f2b6efb2f2bad75f00c32e581005caf1cc3994b1e2593f6f"
  end

  def install
    bin.install "linkbatchd"
  end

  test do
    assert_match /Batch for link acct/, shell_output("#{bin}/linkbatchd -h", 0)
  end
end
