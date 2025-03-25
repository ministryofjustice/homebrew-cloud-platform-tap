# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.40.2"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.40.2/cloud-platform-cli_1.40.2_darwin_amd64.tar.gz"
      sha256 "b8d2093f5193361408e7999f58205ba4078dc26553f36dda6a73cf1fd92781c9"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.40.2/cloud-platform-cli_1.40.2_darwin_arm64.tar.gz"
      sha256 "242607157f87dd9e4387c5140dc453526245986fa04efae1730184ea4d174bd9"

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
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.40.2/cloud-platform-cli_1.40.2_linux_amd64.tar.gz"
        sha256 "83c9601376f84434e2647aaa17f258e053e0ac899f8c56358892853d9f40647c"

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
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.40.2/cloud-platform-cli_1.40.2_linux_armv6.tar.gz"
        sha256 "854df45ec6abd63d9e6fc2d8f738673dee529c5c7e8e1b02448dc20731a9e51c"

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
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.40.2/cloud-platform-cli_1.40.2_linux_arm64.tar.gz"
        sha256 "9beea77d96f964ca3cdc3e841006bdd9e476659b076b0427a932aea732fb1e83"

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
