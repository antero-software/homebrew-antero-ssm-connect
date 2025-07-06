class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.5/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "ebc0314b442ef325b77a4230e1e536b3103613cf9484e98f3b9f137b24b6571d"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.5/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "b39de7a7eee3a7e01c86f9720a229702b0a695bf73deff0968a1d9821cf47e21"
    end
  end

  version "v1.0.5"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
