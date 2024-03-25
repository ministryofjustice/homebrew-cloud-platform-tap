# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.32.6"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.32.6/cloud-platform-cli_1.32.6_darwin_arm64.tar.gz"
      sha256 "8a054ccaeebf890fb13e6d699afd8be79f60619256f20302c13acfd3635704d0"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.32.6/cloud-platform-cli_1.32.6_darwin_amd64.tar.gz"
      sha256 "f4567f007b0ffd2d5b4e2192d23fac553cd298e8626ee226a74276b5c7241bd3"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.32.6/cloud-platform-cli_1.32.6_linux_armv6.tar.gz"
      sha256 "8f13cf4cb7888fdbbe38223cd9c3367ba28c627013930877bb7e789d06551b9a"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.32.6/cloud-platform-cli_1.32.6_linux_arm64.tar.gz"
      sha256 "3d6cdae93af7a122a3b81454ee1a0df26081f309548b584283a1b1f39758e649"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.32.6/cloud-platform-cli_1.32.6_linux_amd64.tar.gz"
      sha256 "e666d70b6db12c3fdd1dd101c362770b9e26b49e86cdc32eccd5a712d650e951"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end
end
