# This file was generated by GoReleaser. DO NOT EDIT.
class Linkbatchd < Formula
  desc "Batch binary for Ripple/Wave for AWS."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.43"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.43/ouchantools_1.0.43_darwin_amd64.tar.gz"
    sha256 "a7e887162f1a7aa673e328f29c7ee84fcb6ca561f87f970eab09bcfd3c28c10c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.43/ouchantools_1.0.43_linux_amd64.tar.gz"
    sha256 "98ce8264e949cee414fba9cf06eb358c406378ea1ecf567acf420c5385ef01c3"
  end

  def install
    bin.install "linkbatchd"
  end

  test do
    assert_match /Batch for link acct/, shell_output("#{bin}/linkbatchd -h", 0)
  end
end
