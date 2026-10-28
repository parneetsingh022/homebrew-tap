class Seek < Formula
  desc "Fast command-line tool for searching text in files"
  homepage "https://github.com/parneetsingh022/seek"
  url "https://github.com/parneetsingh022/seek/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9c392e48fb60f24b8c6728ed73ff59ffe33b61bb754f3e02674eb73b28b4c731"
  license "MIT"

  def install
    system "make"
    bin.install "build/seek"
  end

  test do
    (testpath/"sample.txt").write("hello world\n")
    assert_match "hello", shell_output("#{bin}/seek hello")
  end
end
