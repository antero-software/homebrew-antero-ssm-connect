class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.3/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "e9705dd2b5a6ab6ec00aa37c5e67101075d92af2613e1e6ae5b599acf5b8c04d"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.0.3/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "58412ad2aa910e07454e5a45ae38a1161dae2c15dabe7d7f52b9169b6b781576"
    end
  end

  version "v1.0.3"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
