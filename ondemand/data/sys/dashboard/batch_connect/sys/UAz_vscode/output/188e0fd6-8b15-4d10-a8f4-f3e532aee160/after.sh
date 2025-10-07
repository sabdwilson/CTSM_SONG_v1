# after.sh is sourced by the ood framework once script.sh has been run
# in a subshell in the background.
#  CAUTION: do NOT spin lock on completion events here or websockify,
#  	which runs later in
# 	  job_script_contents.sh
# 	will not start and the GUI will not come up.
#
# Ansible managed

# wait for vscode to put in a guest appearance since script.sh is started in
# background.
echo "Waiting for code to start..."
UAcount=300
while [ -z "$(pgrep -u ${USER} code)" -a $UAcount -gt 0 ]; do
  sleep 2
  UAcount=$((${UAcount} - 2))
done
if [ $UAcount -gt 0 ]; then
  echo "code startup successful ${UAcount} seconds before timeout"
else
  echo "Timed out waiting for code to start"
  clean_up 1
fi
unset UAcount
#
#-end of after.sh.
