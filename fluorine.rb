require 'formula'

class Fluorine < Formula

  homepage 'https://github.com/reborg/fluorine'
  url 'https://github.com/reborg/fluorine/archive/0.0.8.tar.gz'
  sha1 '6e5c20c7af834b74bea1ed4408acb95c2df5e754'

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
