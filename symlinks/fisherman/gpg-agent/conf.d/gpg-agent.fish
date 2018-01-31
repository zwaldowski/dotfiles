function __launch_gpg_agent -d "Launch GPG agent"
	gpg-agent --daemon >/dev/null
end

if test -f ~/.gnupg/S.gpg-agent.ssh
	__launch_gpg_agent

	set -gx GPG_TTY (tty)
end
