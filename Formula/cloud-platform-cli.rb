# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.39.7"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.39.7/cloud-platform-cli_1.39.7_darwin_amd64.tar.gz"
      sha256 "bdb3190bfe2ee4236201e1aa6a3246d61dea357986020b62bbb9757a15da49a5"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.39.7/cloud-platform-cli_1.39.7_darwin_arm64.tar.gz"
      sha256 "1f97a4343352732f205c9e4729998cc2ffa68524e285a8be1b1d624caba8532b"

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
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.39.7/cloud-platform-cli_1.39.7_linux_amd64.tar.gz"
        sha256 "7cbe5946d0e28b15e3c72d1d6c997d00f4ddcceaa2361254ecd6c4737e892096"

        def install
          bin.install "cloud-platform"
          bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
          zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
          fish_completion.install "completions/cloud-platform.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.39.7/cloud-platform-cli_1.39.7_linux_armv6.tar.gz"
        sha256 "9a44472e91f39f2c98160b53191257af19ff0f64839cb5155a6b8fed739532d6"

        def install
          bin.install "cloud-platform"
          bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
          zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
          fish_completion.install "completions/cloud-platform.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.39.7/cloud-platform-cli_1.39.7_linux_arm64.tar.gz"
        sha256 "bb200c2ed8fb5138e61bfa9ce42ace572f5ada527042f77ceafcc83df23b386d"

        def install
          bin.install "cloud-platform"
          bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
          zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
          fish_completion.install "completions/cloud-platform.fish"
        end
      end
    end
  end
end
