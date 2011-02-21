alias dch='dch --distributor=yandex'
alias pch='dpkg-parsechangelog'
alias package-name="dpkg-parsechangelog | sed -n 's/^Source: //p'"
alias package-ver="dpkg-parsechangelog | sed -n 's/^Version: //p'"
package() { echo `package-name`=`package-ver`; }