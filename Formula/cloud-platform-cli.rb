# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for Ministry of Justice Cloud Platform."
  homepage "https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide"
  version "1.26.9"
  license "MIT"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.26.9/cloud-platform-cli_1.26.9_darwin_arm64.tar.gz"
      sha256 "1f346a7571dad8639366698d722d60b709a542c2051feced7ea1051d78d9d723"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.26.9/cloud-platform-cli_1.26.9_darwin_amd64.tar.gz"
      sha256 "1d4d1773b3cdba3a53b96c2de309a417aeb1841349c43a0a83bf1aab28d85f3c"

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
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.26.9/cloud-platform-cli_1.26.9_linux_amd64.tar.gz"
      sha256 "88d7107fc1fc3216767d8b676922bcd620faa2cfa1e1462cabaa069d2bc4fbd0"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.26.9/cloud-platform-cli_1.26.9_linux_armv6.tar.gz"
      sha256 "e67e7d428b7e9718a6040e329edd5085f2e417cfdaae9729f63b223536b627ab"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.26.9/cloud-platform-cli_1.26.9_linux_arm64.tar.gz"
      sha256 "e2d2bc0916d863fa3e6b760721cefc31b257bf17d304d60cdd8b5da45466c720"

      def install
        bin.install "cloud-platform"
        bash_completion.install "completions/cloud-platform.bash" => "cloud-platform"
        zsh_completion.install "completions/cloud-platform.zsh" => "_cloud-platform"
        fish_completion.install "completions/cloud-platform.fish"
      end
    end
  end
end
