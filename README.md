# system_health_check
 Use Ansible to do health check on the server

# How to use
```
$ chmod +x userdata.sh
$ ./userdata.sh
```

# Settings for each module in /etc/ansible/task/system_health_check.yml
## system_check
```
CHECK_LIST:
  - 'system_check'
CPU_MAX: [number]
MEM_MAX: [number]
SWAP_MAX: [number]
```
## disk_usage
```
CHECK_LIST:
  - 'disk_usage'
DISK:
  - path: '[path]'
    max: [number]

  - path: '[path]'
    max: [number]
...
```
## ping_check
```
CHECK_LIST:
  - 'ping_check'
PING_IP: 
  - '[ip]'
  ...
```
## services_check
```
CHECK_LIST:
  - 'services_check'
SERVICES: 
  - '[service]'
  ...
```
## processes_check
```
CHECK_LIST:
  - 'processes_check'
PROCESSES:
  - name: '[process]'
    num: [number]
  ...
```
## log_content
```
CHECK_LIST:
  - 'log_content'
LOG_CHECK:
  - name: '[log name or service name]'
    path: '[path]'
    # example
    # path: '/home/logs/ping_server/{{ ansible_date_time.date }}.log'
    rows: [number]
    key_word: '[key word]'
  ...
```
## sftp_test
```
CHECK_LIST:
  - 'sftp_test'
SFTP_TIMEOUT: [number]
  SFTP_TEST:
  - ip: '[ip]'
    port: '[port]'
    user: '[user]'
    pwd: '[password]'
  ...
```
## ntp_check
```
CHECK_LIST:
  - 'ntp_check'
NTP_CHECK:
  - '[url or ip]'
  ...
```
## ntpq_check
```
CHECK_LIST:
  - 'ntpq_check'
NTPQ_CHECK:
  # example
  - '211-22-103-157'
  - '[ip]'
  ...
```
## file_check
```
CHECK_LIST:
  - 'file_check'
FILE_PATH:
  - '[path]'
  ...
```
## api_test
```
CHECK_LIST:
  - 'api_test'
API_TIMEOUT: [number]
  API_TEST: 
    - name: '[name]'
      url: '[ip or url]'
      method: '[method]'
      params: '[params]'
    ...
```
## mysql_test
```
CHECK_LIST:
  - 'mysql_test'
MYSQL_TIMEOUT: [number]
  MYSQL_TEST:
    - action: [Insert/Select...]
      host: [ip]
      port: [port]
      user: [user]
      pwd: [password]
      db_name: [db]
      cmd: '[mysql cmd]'
    ...
```
## redis_test
```
CHECK_LIST:
  - 'redis_test'
REDIS_TIMEOUT: [number]
  REDIS_TEST:
    - action: [SET/GET]
      host: [ip]
      port: [port]
      pwd: [password]
      cmd: '[redis cmd]'
    ...
```
## ssd_check
```
CHECK_LIST:
  - 'ssd_check'
SSD_percentage_used: [number]
```

Good luck!
