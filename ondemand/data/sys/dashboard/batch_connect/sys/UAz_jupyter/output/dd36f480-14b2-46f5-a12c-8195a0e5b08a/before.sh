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

# Find available port to run server on...
port=$(find_port ${host})

# Jupyter is kind of an odd beast - lots of special setup.
#
# Ansible managed
#
# set password for view "POST" submit
password="$(create_passwd 16)"

# Generate SHA1 encrypted password (requires OpenSSL installed)
# based on ${password} from before.sh.
SALT="$(create_passwd 16)"
PASSWORD_SHA1="$(echo -n "${password}${SALT}" | openssl dgst -sha1 | awk '{print $NF}')"

# Set config file path for script.sh (hence the "export")
# This is presumed to be in
#  ~/ondemand/~/ondemand/data/sys/dashboard/batch_connect/sys/UAz_jupyter/
export CONFIG_FILE="${PWD}/config.py"

# define Notebook root directory
export NOTEBOOK_ROOT="${NOTEBOOK_ROOT:-${HOME}}"

# Set working directory to notebook root directory (which might be $HOME,
# see above).
cd "${NOTEBOOK_ROOT}"

# Generate Jupyter configuration file with secure file permissions
# Hence, the "()" to do this in a subshell.
(umask 077
cat > "${CONFIG_FILE}" << EOL
c.JupyterApp.config_file_name = 'ondemand_config'
c.KernelSpecManager.ensure_native_kernel = False
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.port = ${port}
c.NotebookApp.port_retries = 0
c.NotebookApp.password = u'sha1:${SALT}:${PASSWORD_SHA1}'
c.NotebookApp.base_url = '/node/${host}/${port}/'
c.NotebookApp.open_browser = False
c.NotebookApp.allow_origin = '*'
c.NotebookApp.notebook_dir = '${NOTEBOOK_ROOT}'
c.NotebookApp.disable_check_xsrf = True
EOL
)
#-end of before.jupyter.erb.j2.
#
#-end of before.sh.
