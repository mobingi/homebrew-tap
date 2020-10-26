# This file was generated by GoReleaser. DO NOT EDIT.
class Azuretoastd < Formula
  desc "Service that populates information associated with Azure daily usage."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.39"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.39/ouchantools_1.0.39_darwin_amd64.tar.gz"
    sha256 "c1e47e0f56990733c005078d48722a56570be3e9ee13679b15d6374e1f8521d6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/ouchantools/releases/download/v1.0.39/ouchantools_1.0.39_linux_amd64.tar.gz"
      sha256 "a01f5f50dba94702bf18a64ed6ba4a9ac44a9d72e88758ae2b5d471e7d591ae0"
    end
  end

  def install
    bin.install "azuretoastd"
  end

  test do
    assert_match /Service that populates information associated with Azure daily usage/, shell_output("#{bin}/azuretoastd -h", 0)
  end
end
