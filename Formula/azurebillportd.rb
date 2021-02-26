# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azurebillportd < Formula
  desc "Service that exports CSV data for Azure."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.49"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.49/ouchantools_1.0.49_darwin_amd64.tar.gz"
    sha256 "260b7a9fc5cade06012faf1875069875e89a1f2ad8946f64a478b637f9a2c691"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.49/ouchantools_1.0.49_linux_amd64.tar.gz"
    sha256 "13d49ab3f6f2b038263df671494c33b224cf562e170b4d1f003bea53b613817e"
  end

  def install
    bin.install "azurebillportd"
  end

  test do
    assert_match /Service that exports CSV data for Azure/, shell_output("#{bin}/azurebillportd -h", 0)
  end
end
