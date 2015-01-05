source "$HOME/.bashrc"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source "$HOME/.aliases"
source "$HOME/.secrets"

eval $(boot2docker shellinit 2> /dev/null)
export DOCKER_IP=$(boot2docker ip 2>/dev/null)
export JRUBY_OPTS="-Xcext.enabled=true -J-Xms1500m -J-Xmx1500m -Xcompile.invokedynamic=false -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-noverify -Xcompile.mode=OFF"
