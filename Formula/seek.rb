class Seek < Formula
  desc "Fast command-line tool for searching text in files"
  homepage "https://github.com/parneetsingh022/seek"
  url "https://github.com/parneetsingh022/seek/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0c35d0189cc8b1c61e29887ddcc9bb5c7121c0ad3a44f2bca85b592af2762200"
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
