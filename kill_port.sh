# Include this in ~/.bash_profile
# To use, run kill_port SOME_PORT_NUMBER in your terminal
# For example, kill_port 8000

kill_port() {
  lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
}
