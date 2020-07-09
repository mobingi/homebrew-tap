# This file was generated by GoReleaser. DO NOT EDIT.
class Ouchanctl < Formula
  desc "Build tool for ouchan monorepo."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.34"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.34/ouchantools_1.0.34_darwin_amd64.tar.gz"
    sha256 "02b645793b4ef7ebb215f9d7cee38f3f0213f3f0ce627f6a5125885c6353b81b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/ouchantools/releases/download/v1.0.34/ouchantools_1.0.34_linux_amd64.tar.gz"
      sha256 "d70433d1a689f651872ea955dbb24270daf29e1547eb785ddf5bb9e0c285e05a"
    end
  end

  def install
    bin.install "ouchanctl"
  end

  test do
    assert_match /Build tool for ouchan/, shell_output("#{bin}/ouchanctl -h", 0)
  end
end
