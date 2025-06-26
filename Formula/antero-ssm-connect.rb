class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.4/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "14887bba033a66fdb37bbe20a9b206252210db2753a35ae931b95d15ccb280e2"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.4/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "d729efc03b11f7c145d46dd035e696be855b541cb5c9e00c2561503c60b6af2e"
    end
  end

  version "v1.0.4"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
