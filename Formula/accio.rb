# This file was generated by GoReleaser. DO NOT EDIT.
class Accio < Formula
  desc "Accio is a flexible framework for boilerplate code generators"
  homepage "https://github.com/g1ntas/accio"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/g1ntas/accio/releases/download/v0.2.0/accio_0.2.0_macOS-64bit.tar.gz"
    sha256 "072772b086d6dd413207bcdf77152004f25359f3000fa6ab1cce2da523213527"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/g1ntas/accio/releases/download/v0.2.0/accio_0.2.0_Linux-64bit.tar.gz"
      sha256 "e08e6f123850266a6461522d710e1bf985caecb869c5f5d99b5e1f0adcd238ae"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/g1ntas/accio/releases/download/v0.2.0/accio_0.2.0_Linux-ARM64.tar.gz"
        sha256 "923851d89345b020e446aeae3b039c72c38c8c32139f0311baab38601a8c324b"
      else
      end
    end
  end
  
  depends_on "go"
  depends_on "git" => :optional

  def install
    bin.install "accio"
  end

  test do
    system "#{bin}/accio -v"
  end
end
