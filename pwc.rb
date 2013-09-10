require 'formula'

class Pwc < Formula

  homepage 'https://github.com/reborg/pwc'
  url 'https://github.com/reborg/pwc/archive/0.1.0.tar.gz'
  sha1 '0de052832b0aa4a7480bcf24231ffd781bd9dedb'

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
