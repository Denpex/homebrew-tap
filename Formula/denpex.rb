class Denpex < Formula
  include Language::Python::Virtualenv

  desc "Find the likely cause of GPU training failures and run fleet health checks"
  homepage "https://denpex.com"
  url "https://files.pythonhosted.org/packages/ac/f5/679447423672086defda449a12b61dc50f1e7429f5b8666eb0bd60c1d0a4/denpex-1.1.36.tar.gz"
  sha256 "3da744a293c34a087b9e2c72fb10a266b38d5d44c2c365950c79e5015efc2e96"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "nccl-tests", shell_output("#{bin}/denpex --help")
  end
end
