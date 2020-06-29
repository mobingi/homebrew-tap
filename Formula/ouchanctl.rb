# This file was generated by GoReleaser. DO NOT EDIT.
class Ouchanctl < Formula
  desc "Build tool for ouchan monorepo."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.23"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.23/ouchantools_1.0.23_darwin_amd64.tar.gz"
    sha256 "fe7d1b3c85df5045135a90e212d985de7c0252d9f51228afd67c7e1c130e97bf"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/ouchantools/releases/download/v1.0.23/ouchantools_1.0.23_linux_amd64.tar.gz"
      sha256 "b5e6c93c2326142c1b9213449e8246ce90ad250996a706e230fb88ea0ff16432"
    end
  end

  def install
    bin.install "ouchanctl"
  end

  test do
    assert_match /Build tool for ouchan/, shell_output("#{bin}/ouchanctl -h", 0)
  end
end
