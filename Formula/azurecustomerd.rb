# This file was generated by GoReleaser. DO NOT EDIT.
class Azurecustomerd < Formula
  desc "Manage Azure customer mapping, status and naming in Azure."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.30"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.30/ouchantools_1.0.30_darwin_amd64.tar.gz"
    sha256 "1554bed38594a12052a7af163f5b6cbd9a4199bbcf7df49766b2dd2a2f6504a2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/ouchantools/releases/download/v1.0.30/ouchantools_1.0.30_linux_amd64.tar.gz"
      sha256 "8d5c7e9179a62b54f6a824149819527edac8cf3dbd0912b5485cc03036ed8dd2"
    end
  end

  def install
    bin.install "azurecustomerd"
  end

  test do
    assert_match /Manage Azure customer mapping, status and naming in Azure/, shell_output("#{bin}/azurecustomerd -h", 0)
  end
end
