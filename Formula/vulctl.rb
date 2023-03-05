# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vulctl < Formula
  desc "Vulnerability management tool."
  homepage "https://github.com/mchmarny/vulctl"
  version "0.0.7"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/vulctl/releases/download/v0.0.7/vulctl_0.0.7_darwin_all"
    sha256 "ebfee73d448d66dfa9be3ee57ac67ba1286839613c5d28988607ede5f2047ba2"

    def install
      bin.install "vulctl_0.0.7_darwin_all" => "vulctl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.0.7/vulctl_0.0.7_linux_amd64"
      sha256 "aac20f51fc89656621587018ebb4406c0c3507a38aa58d9734e240c17366a559"

      def install
        bin.install "vulctl_0.0.7_linux_amd64" => "vulctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/vulctl/releases/download/v0.0.7/vulctl_0.0.7_linux_arm64"
      sha256 "d66e4732656ce0b932b13c75acc2bbcd49a6690fd9597aeb485184bc90ad156e"

      def install
        bin.install "vulctl_0.0.7_linux_arm64" => "vulctl"
      end
    end
  end

  test do
    system "#{bin}/vulctl --version"
  end
end
