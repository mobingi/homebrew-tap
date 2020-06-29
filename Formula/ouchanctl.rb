# This file was generated by GoReleaser. DO NOT EDIT.
class Ouchanctl < Formula
  desc "Build tool for ouchan monorepo."
  homepage "https://github.com/mobingi/homebrew-tap"
  version "1.0.22"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mobingi/homebrew-tap/releases/download/v1.0.22/ouchantools_1.0.22_darwin_amd64.tar.gz"
    sha256 "c2a814f1abb01f5c90e4bda1f9c8e1f117fb25d39cd09917b4c6c9f7d8d69d2e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mobingi/homebrew-tap/releases/download/v1.0.22/ouchantools_1.0.22_linux_amd64.tar.gz"
      sha256 "edf6f8cbac23849510ef8778b9f38bec8881b1e970c15ba8631ec7098bdc5f61"
    end
  end

  def install
    bin.install "ouchanctl"
  end

  test do
    assert_match /Build tool for ouchan/, shell_output("#{bin}/ouchanctl -h", 0)
  end
end
