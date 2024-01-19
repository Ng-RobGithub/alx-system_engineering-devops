# File: kill_process.pp

# Ensure the process "killmenow" is killed
exec { 'killmenow_process':
  command     => 'pkill killmenow',
  refreshonly => true,
  onlyif      => 'pgrep killmenow',
}
