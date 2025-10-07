# before.sh is sourced by the ood framework before script.sh is run
# in a subshell.
#
# Ansible managed
#
# ** Do NOT (repeat NOT!) change the cwd here.  Code in script.sh.erb
# depends on the cwd being ~/ondemand/...sys/<app name>/output/<longname>
#
# Export the module function if it exists
[[ $(type -t module) == "function" ]] && export -f module



#
#-end of before.sh.
