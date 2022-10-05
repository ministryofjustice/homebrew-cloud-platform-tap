# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.20.0"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.20.0/cloud-platform-cli_1.20.0_darwin_arm64.tar.gz"
      sha256 "a7a75c23a1e6085dc5b46c5d26ae447ce7d4e282765982bf1938ba7b75bcaeb7"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.20.0/cloud-platform-cli_1.20.0_darwin_amd64.tar.gz"
      sha256 "2f3acddf7aeb480092c63ef7e6dd23127a67e848e58327c40fbef5bb474c48a1"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.20.0/cloud-platform-cli_1.20.0_linux_amd64.tar.gz"
      sha256 "68407ae3f4a1687878fd203d76aa9b90d0e8a3863efaab23bdb1c275c5b73915"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.20.0/cloud-platform-cli_1.20.0_linux_armv6.tar.gz"
      sha256 "5d862f2a4cdce1583e6d579d47c04f54ca2077e05b8aeac5123b7f4aaca47551"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.20.0/cloud-platform-cli_1.20.0_linux_arm64.tar.gz"
      sha256 "2731e6b81f14277edf6ab3ded45cf90a9140a425ee186013bb51d1722be5549d"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end
end
