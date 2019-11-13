if test ! -e ~/.gnupg/S.gpg-agent.ssh; and command -sq gpg-agent
	gpg-agent --daemon >/dev/null
end

set -x GPG_TTY (tty)
