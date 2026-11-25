class Denpex < Formula
  include Language::Python::Virtualenv

  desc "Find the likely cause of GPU training failures and run fleet health checks"
  homepage "https://denpex.com"
  url "https://files.pythonhosted.org/packages/48/d9/68f25248393817f932ebe8ec0bc0e2f7e4a8087a0d77302ac41e3d362d53/denpex-1.1.39.tar.gz"
  sha256 "5e74a1a2d1a82b7cec0e87ff2c1be81fe010cdf18e396e07362a8915fc1d160a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "nccl-tests", shell_output("#{bin}/denpex --help")
  end
end
