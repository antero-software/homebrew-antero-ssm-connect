class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.6/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "e430dde382c912e4e89057e7e7d9a792c6be75c008385db41c71fd54ffe93a9c"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.6/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "aff3e15b75f0865422ebbbee5f3031ea90e35df785b3857909c3a0b3c83869d2"
    end
  end

  version "v1.0.6"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
