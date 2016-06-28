require 'formula'

class Fluorine < Formula

  homepage 'https://github.com/reborg/fluorine'
  url 'https://github.com/reborg/fluorine/archive/0.0.7.tar.gz'
  sha1 '5442b4314e83a5e769261d9ef6c8deaacdd2256f'

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
