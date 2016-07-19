require 'formula'

class Fluorine < Formula

  homepage 'https://github.com/reborg/fluorine'
  url 'https://github.com/reborg/fluorine/archive/0.0.9.tar.gz'
  sha1 'd267b5043327f118903025858aa4c70fe2db1be9'

  head "https://github.com/reborg/fluorine.git"

  def install
    inreplace "bin/fluorine", "#!/bin/sh", "#!/bin/sh\nFLUORINE_HOME=#{libexec}"
    libexec.install Dir['*']
    bin.write_exec_script libexec/'bin/fluorine'
  end

  test do
    system "#{bin}/fluorine"
  end

end
