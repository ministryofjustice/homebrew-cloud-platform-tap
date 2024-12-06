# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.37.14"
  license "MIT"

  depends_on "go"

  on_macos do
    on_intel do
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.37.14/cloud-platform-cli_1.37.14_darwin_amd64.tar.gz"
      sha256 "c97fa4ec4897c491ed3b0a753ca5223d8e095dd61c1df95075a40f6671add5b6"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    on_arm do
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.37.14/cloud-platform-cli_1.37.14_darwin_arm64.tar.gz"
      sha256 "27f9f998c0eb6da3bb1540d7ba151461faf108b7670d2a06e4de2d82c185ecc1"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.37.14/cloud-platform-cli_1.37.14_linux_amd64.tar.gz"
        sha256 "6cf778a71cc90412cc0660db07df32cc606d615d00ad6385f73d20385fdb5122"

        def install
          bin.install "cloud-platform"
          bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
          zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
          fish_completion.install "completions/cloud-platform.fish"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.37.14/cloud-platform-cli_1.37.14_linux_armv6.tar.gz"
        sha256 "8ec59ce17e93c74e5395799fdd637a03fcea541bcfdcb21db213dc6ca74c837f"

        def install
          bin.install "cloud-platform"
          bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
          zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
          fish_completion.install "completions/cloud-platform.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.37.14/cloud-platform-cli_1.37.14_linux_arm64.tar.gz"
        sha256 "46c100139d46f052943e1849a79ec33abeaae92e0ac6ecacd97b38016401155d"

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
