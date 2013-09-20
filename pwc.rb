require 'formula'

class Pwc < Formula

  homepage 'https://github.com/reborg/pwc'
  url 'https://github.com/reborg/pwc/archive/0.1.1.tar.gz'
  sha1 'becfeba8fece1ecdd0a3290993a0fbe245a48a7a'

  head "https://github.com/reborg/pwc.git"

  def install
    inreplace "bin/pwc", "#!/bin/sh", "#!/bin/sh\nPWC_HOME=#{libexec}"
    libexec.install Dir['*']
    bin.write_exec_script libexec/'bin/pwc'
  end

  test do
    system "#{bin}/pwc"
  end

end
