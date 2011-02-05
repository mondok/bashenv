
# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# mysql
PATH="/usr/local/mysql/bin:${PATH}"
export PATH

export PATH=$PATH:$HOME/bin:/var/lib/gems/1.8/bin
export PATH=$PATH:$HOME/bin:/Users/mondokmj/.rvm/gems/ruby-1.9.2-p136@ezlaw
export PATH=$PATH:$HOME/bin:/Users/mondokmj/.rvm/gems/ruby-1.9.2-p136

##
# Your previous /Users/mondokmj/.bash_profile file was backed up as /Users/mondokmj/.bash_profile.macports-saved_2010-12-15_at_11:21:09
##

# MacPorts Installer addition on 2010-12-15_at_11:21:09: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
source $HOME/.bashrc