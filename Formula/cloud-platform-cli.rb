# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.15.0/cloud-platform-cli_1.15.0_darwin_amd64.tar.gz"
      sha256 "c5bbe1c8b7381adb7e821dcdb976fb64c47cddb5de4ec3692af25f6814306b5a"

      def install
        bin.install "cloud-platform"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.15.0/cloud-platform-cli_1.15.0_darwin_arm64.tar.gz"
      sha256 "755cd792a72ff059b8d45f68a18de7cd4319d3eb595f3dfbadb34fd5f468ad0f"

      def install
        bin.install "cloud-platform"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.15.0/cloud-platform-cli_1.15.0_linux_arm64.tar.gz"
      sha256 "0e5d6b1ede106ea7e42b977a0ee30da983ee30759c1b76367529d41e53917be4"

      def install
        bin.install "cloud-platform"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.15.0/cloud-platform-cli_1.15.0_linux_armv6.tar.gz"
      sha256 "21c5edc56260be3d243492eaee70f4a598f85faff151b16baa7a05caee33a7c2"

      def install
        bin.install "cloud-platform"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.15.0/cloud-platform-cli_1.15.0_linux_amd64.tar.gz"
      sha256 "aeb4918aee2b420d6792e926809df568a3b07c96c345c41ff011ad40f2356ea0"

      def install
        bin.install "cloud-platform"
      end
    end
  end

  depends_on "go"
end
