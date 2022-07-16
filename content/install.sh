#/bin/sh

check_sys() {
  if [[ -f /etc/redhat-release ]]; then
    release="centos"
  elif grep -q -E -i "debian" /etc/issue; then
    release="debian"
  elif grep -q -E -i "ubuntu" /etc/issue; then
    release="ubuntu"
  elif grep -q -E -i "centos|red hat|redhat" /etc/issue; then
    release="centos"
  elif grep -q -E -i "Arch|Manjaro" /etc/issue; then
    release="archlinux"
  elif grep -q -E -i "debian" /proc/version; then
    release="debian"
  elif grep -q -E -i "ubuntu" /proc/version; then
    release="ubu"
  elif grep -q -E -i "centos|red hat|redhat" /proc/version; then
    release="centos"
  else
    echo -e "ServerStatus 暂不支持该Linux发行版"
  fi
    echo -e "$release"

}

# Install Cloudreve
VERSION="$(curl --retry 10 --retry-max-time 60 https://api.github.com/repos/cloudreve/Cloudreve/releases/latest | jq .tag_name | sed 's/\"//g')"
wget -qO - https://github.com/cloudreve/Cloudreve/releases/download/${VERSION}/cloudreve_${VERSION}_linux_amd64.tar.gz | tar -zxf - -C /usr/bin

# Install Aria2
wget -qO - https://github.com/P3TERX/Aria2-Pro-Core/releases/download/1.36.0_2021.08.22/aria2-1.36.0-static-linux-amd64.tar.gz | tar -zxf - -C /usr/bin
