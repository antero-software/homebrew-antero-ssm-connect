class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.7/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "bf80a089147b1719daaf94a243f8d16618915308a8275f83fc506a7e12792b40"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.7/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "e7d41b5c592869af79ec0a3d1653ff768533ea4cf5f7b6026ace395b869af9cd"
    end
  end

  version "v1.0.7"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
