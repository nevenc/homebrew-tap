require 'formula'

class OmCli < Formula
  homepage 'https://github.com/pivotal-cf/om'
  version "3.0.0"
  url "https://github.com/pivotal-cf/om/releases/download/#{version}/om-darwin-#{version}"
  sha256 "a6a021f15c1290b019f24236de40a619ff5eb61de3cc55fc21602adf397c0a99"

  depends_on :arch => :x86_64

  def install
    mv "om-darwin-#{version}", "om"
    bin.install "om"
  end

  test do
    system "#{bin}/om"
  end
end
