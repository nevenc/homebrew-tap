require 'formula'

class OmCli < Formula
  homepage 'https://github.com/pivotal-cf/om'
  version "2.0.1"
  url "https://github.com/pivotal-cf/om/releases/download/#{version}/om-darwin-#{version}"
  sha256 "63bda93dce923cced123ced4cbfea06d30b042b3dd9b9f9dc2eea99570b40ca2"

  depends_on :arch => :x86_64

  def install
    mv "om-darwin-#{version}", "om"
    bin.install "om"
  end

  test do
    system "#{bin}/om"
  end
end
