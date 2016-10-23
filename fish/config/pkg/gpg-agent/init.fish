function __launch_gpg_agent -d "Launch GPG agent"
	gpg-agent --daemon --no-grab --write-env-file ~/.gnupg/.gpg-agent-info >/dev/null
end

function __refresh_gpg_agent_info -d "Re-load GPG agent info into environment"
	cat ~/.gnupg/.gpg-agent-info | sed 's/=/ /' | while read key value
		set -e $key
		set -U -x $key "$value"
	end

	set -gx GPG_TTY (tty)
end

if not set -q -x GPG_AGENT_INFO
	__launch_gpg_agent
end

if test -f ~/.gnupg/.gpg-agent-info
	__refresh_gpg_agent_info

	gpg-connect-agent /bye ^/dev/null
	if test $status -eq 1
		pkill -U $USER gpg-agent
		__launch_gpg_agent
		__refresh_gpg_agent_info
	end
end
