class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.0/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "8a6f8957377c85ee421a943c659f146fb6d609dd52af3e5aaf77ea5b16d72ce3"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.0/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "a402a16a95328fc67e720b42d4e04074ae7bb5e97848a15514b961b181bd0328"
    end
  end

  version "v1.0.0"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
