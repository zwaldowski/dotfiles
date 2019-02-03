if test ! -e ~/.gnupg/S.gpg-agent.ssh
	gpg-agent --daemon >/dev/null
end

set -x GPG_TTY (tty)
