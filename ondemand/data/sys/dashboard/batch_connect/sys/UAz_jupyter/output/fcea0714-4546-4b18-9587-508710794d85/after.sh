# after.sh is sourced by the ood framework once script.sh has been run
# in a subshell in the background.
#  CAUTION: do NOT spin lock on completion events here or websockify,
#  	which runs later in
# 	  job_script_contents.sh
# 	will not start and the GUI will not come up.
#
# Ansible managed

# Wait for the Jupyter Notebook to start
echo "Waiting for Jupyter Notebook to open port ${port}..."
if wait_until_port_used "${host}:${port}" 300; then
  echo "Discovered Jupyter Notebook listening on port ${port}!"
else
  echo "Timed out waiting for Jupyter Notebook to open port ${port}!"
  clean_up 1
fi
sleep 2
#
#-end of after.sh.
