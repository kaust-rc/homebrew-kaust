class Proteowizard < Formula
  desc "Modular cross-platform tools for easy proteomics data analysis"
  homepage "https://proteowizard.sourceforge.net/index.shtml"
  url "https://github.com/kaust-rc/homebrew-apps/blob/test-proteowizard/archive/pwiz-bin-linux-x86_64-gcc48-release-3_0_11579.tar.bz2"
  sha256 "5afbfa654958298f6b81ed6c27f61dd35da7aa89d081c95f1590116230d079ba"

  def install
    prefix.install "quantitation_1.xsd", "quantitation_2.xsd", "unimod_2.xsd"
    bin.install "chainsaw", "idcat", "idconvert", "msaccess", "msbenchmark", "mscat", "msconvert", "msdiff", "msdir", "msistats"
    bin.install "mspicture", "peakaboo", "pepcat", "pepsum", "qtofpeakpicker", "sldout", "txt2mzml"
  end

  test do
    assert_predicate bin/"chainsaw", :exist?
    assert_predicate bin/"idcat", :exist?
    assert_predicate bin/"idconvert", :exist?
    assert_predicate bin/"msaccess", :exist?
    assert_predicate bin/"msbenchmark", :exist?
    assert_predicate bin/"mscat", :exist?
    assert_predicate bin/"msconvert", :exist?
    assert_predicate bin/"msdiff", :exist?
    assert_predicate bin/"msdir", :exist?
    assert_predicate bin/"msistats", :exist?
    assert_predicate bin/"mspicture", :exist?
    assert_predicate bin/"peakaboo", :exist?
    assert_predicate bin/"pepcat", :exist?
    assert_predicate bin/"pepsum", :exist?
    assert_predicate bin/"qtofpeakpicker", :exist?
    assert_predicate bin/"sldout", :exist?
    assert_predicate bin/"txt2mzml", :exist?
  end
end
