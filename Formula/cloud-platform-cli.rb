# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.30.8"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.30.8/cloud-platform-cli_1.30.8_darwin_amd64.tar.gz"
      sha256 "fc9dee89d1e0a3abaab04c8cb97b5fdaf4ce8ee05a9c13f10643bfcc2f4e2b59"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.30.8/cloud-platform-cli_1.30.8_darwin_arm64.tar.gz"
      sha256 "9a1eca8d3d3953c2f2cd30fc029658303edda47aae64ea3c3a3664592b034324"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.30.8/cloud-platform-cli_1.30.8_linux_arm64.tar.gz"
      sha256 "a0baa365ace0f5022019fddafa14094a445d32f24988d3dd2d1c3af37c4ec52e"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.30.8/cloud-platform-cli_1.30.8_linux_amd64.tar.gz"
      sha256 "1d3aeee571cf18e2d5bdb82c6a11f92c8cda07a3497108a20fab17808c450e70"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.30.8/cloud-platform-cli_1.30.8_linux_armv6.tar.gz"
      sha256 "40ec9fef13b34509e4af0244257401cf53fbc590683a71fcab20d604379b53b6"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end
end
