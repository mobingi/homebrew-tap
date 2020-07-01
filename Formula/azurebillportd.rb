# This file was generated by GoReleaser. DO NOT EDIT.
class Azurebillportd < Formula
  desc "Service that exports CSV data for Azure."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.32"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.32/ouchantools_1.0.32_darwin_amd64.tar.gz"
    sha256 "23d02c454e0512c11148ba798a02b45ac46d9c4688b4fe7c504f8e450f959055"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/ouchantools/releases/download/v1.0.32/ouchantools_1.0.32_linux_amd64.tar.gz"
      sha256 "2f129cbab5b8f70548523dda2490f5972bc5592a86e438d46d63c920421894de"
    end
  end

  def install
    bin.install "azurebillportd"
  end

  test do
    assert_match /Service that exports CSV data for Azure/, shell_output("#{bin}/azurebillportd -h", 0)
  end
end
