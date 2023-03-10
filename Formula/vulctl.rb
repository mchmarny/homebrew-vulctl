# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.2.6/vulctl_0.2.6_darwin_all"
    sha256 "890d0f74a44fac485ca3a74c90a5ad4c93a89c048b263b48aa931dff1d47a4c1"

    def install
      bin.install "vulctl_0.2.6_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.2.6/vulctl_0.2.6_linux_arm64"
      sha256 "46dcca577b368fdb1dbea713ca623d6a469b9cb5e80d360e033e7c42c608b15f"

      def install
        bin.install "vulctl_0.2.6_linux_arm64" => "vulctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.2.6/vulctl_0.2.6_linux_amd64"
      sha256 "c296915123532989a17a1e3f040742c7b9785ebb8f112bacf8d2a93b6e3f1b19"

      def install
        bin.install "vulctl_0.2.6_linux_amd64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
