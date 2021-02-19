# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azurebatchd < Formula
  desc "Batch binary for Ripple/Wave for Azure."
  homepage "https://github.com/mobingi/ouchantools"
  version "1.0.48"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.48/ouchantools_1.0.48_darwin_amd64.tar.gz"
    sha256 "46f07abefe75f692018deede09acb2d92a6ed5fbd33d7a4667c135f28351e765"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mobingi/ouchantools/releases/download/v1.0.48/ouchantools_1.0.48_linux_amd64.tar.gz"
    sha256 "4017701adca59ed0f8836f8e8da319f90f655040b561c0c7805dbbc6755e547c"
  end

  def install
    bin.install "azurebatchd"
  end

  test do
    assert_match /Wave/, shell_output("#{bin}/azurebatchd -h", 0)
  end
end
