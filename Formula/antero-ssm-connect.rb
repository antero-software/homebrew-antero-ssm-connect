class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.1.0/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "5aae1e346160e4c28eb2bc8886224ecf73bfe369dc95fbf7be844ed844159b55"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.1.0/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "e86ebd1741bfbd80a750785cdbe124a94259cd984bec01e14b522b51a565193e"
    end
  end

  version "v1.1.0"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
