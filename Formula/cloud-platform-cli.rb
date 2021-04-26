# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CloudPlatformCli < Formula
  desc "Multi-purpose CLI for the Cloud Platform team"
  homepage ""
  url "https://github.com/ministryofjustice/cloud-platform-cli/releases/download/1.8.9/cloud-platform-cli_1.8.9_darwin_amd64.tar.gz"
  sha256 "4fd0474f96eaeaf3ca65911b174e275aa04530bbf896bce468ee41bc4e1031c4"
  license "MIT"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cloud-platform-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
