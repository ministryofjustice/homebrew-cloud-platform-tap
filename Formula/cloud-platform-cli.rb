# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.9.7"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.9.7/cloud-platform-cli_1.9.7_darwin_amd64.tar.gz"
      sha256 "056d06c42d7108724c39dd36a4e4b157f48106f6724322dff1192c2bf055064e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.9.7/cloud-platform-cli_1.9.7_darwin_arm64.tar.gz"
      sha256 "ee5e6a0880c52dfd176b2872e0ed11107898323da9341a321b7fb0ff9978dd86"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.9.7/cloud-platform-cli_1.9.7_linux_amd64.tar.gz"
      sha256 "655723f9332b3f450d0434a5a73997beda47192d780adcc2970f6cf65c467611"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.9.7/cloud-platform-cli_1.9.7_linux_armv6.tar.gz"
      sha256 "0f7d88bb1c5e3bd90b6ea57e3afbffd1df27b6a45e056a21037584b16115f4e9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.9.7/cloud-platform-cli_1.9.7_linux_arm64.tar.gz"
      sha256 "0cb6eb588c609f86e9816f5d2aa86b1ab154990dcf3d4374cb1a34a21b319e40"
    end
  end

  depends_on "go"

  def install
    bin.install "cloud-platform"
  end
end
