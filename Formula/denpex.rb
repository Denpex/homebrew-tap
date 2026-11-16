class Denpex < Formula
  include Language::Python::Virtualenv

  desc "Find the likely cause of GPU training failures and run fleet health checks"
  homepage "https://denpex.com"
  url "https://files.pythonhosted.org/packages/34/38/5567a58392bea95afdc6b3ee2ec236f1bc55b64184ec83ef9f12fc59abb1/denpex-1.1.35.tar.gz"
  sha256 "886d99e5f8349eb7176d6ed291e41c9aa323eda0273bb1627d34c1a1895a353a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "nccl-tests", shell_output("#{bin}/denpex --help")
  end
end
