class Pikchr < Formula
  desc "PIC-like markup language for diagrams in technical documentation"
  homepage "https://pikchr.org/"
  url "https://pikchr.org/home/tarball/trunk/pikchr.tar.gz"
  version "latest"
  sha256 "b83786c5597f56bd328f0dde92fcafa05c70e45a0c12ee055316385a57378344"
  license "0BSD"

  PIKCHR_EXEC_NAME = "pikchr".freeze

  def install
    system ENV.cc.to_s, "-DPIKCHR_SHELL", "-o", PIKCHR_EXEC_NAME, "#{PIKCHR_EXEC_NAME}.c", "-lm"
    bin.install PIKCHR_EXEC_NAME
  end

  test do
    system "#{bin}/#{PIKCHR_EXEC_NAME}"
  end
end
