# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.14.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.14.9/cloud-platform-cli_1.14.9_darwin_arm64.tar.gz"
      sha256 "5f5a4b77a6ecec2c904cf4a51977188660a3329418b37cfd855349266876fe0c"

      def install
        bin.install "cloud-platform"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.14.9/cloud-platform-cli_1.14.9_darwin_amd64.tar.gz"
      sha256 "5ccd7f3d02c8d05fed4d69281c28e6ec300cdc2431d38004b122fe722e2aec4b"

      def install
        bin.install "cloud-platform"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.14.9/cloud-platform-cli_1.14.9_linux_armv6.tar.gz"
      sha256 "c94c905dc65cd6b69e150a3fb21bca27e3f546353c4763b14d1c969b930192f7"

      def install
        bin.install "cloud-platform"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.14.9/cloud-platform-cli_1.14.9_linux_arm64.tar.gz"
      sha256 "f452893ae4186f1cbc941bec859a8bd79df86fc53fe4813a618b36a0727c522b"

      def install
        bin.install "cloud-platform"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.14.9/cloud-platform-cli_1.14.9_linux_amd64.tar.gz"
      sha256 "e579f55bbb268e170afa9b64219bbadc20ebc0aa43f971f9f01d1f832c8d3eac"

      def install
        bin.install "cloud-platform"
      end
    end
  end

  depends_on "go"
end
