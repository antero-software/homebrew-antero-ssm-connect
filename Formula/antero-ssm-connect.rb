class AnteroSsmConnect < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/antero-software/antero-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.2.1/antero-ssm-connect-darwin-amd64.tar.gz"
      sha256 "70040e48868c253ee7083db8063e3214af57460ee32dd580860b7817bc9b829a"
    elsif Hardware::CPU.arm?
      url "https://github.com/antero-software/antero-ssm-connect/releases/download/v1.2.1/antero-ssm-connect-darwin-arm64.tar.gz"
      sha256 "0c1e6968e1bfb5b0db99522ac574711afe9f4f182a518d50f61f39dda078c494"
    end
  end

  version "v1.2.1"

  def install
    bin.install "antero-ssm-connect"
  end

  test do
    system "#{bin}/antero-ssm-connect", "--help"
  end
end
