```sh
admin@i-03b19b4fc8eebe78c:~$ history
    1  2024-05-03T01:19:30 ps aux | grep badlog
    2  2024-05-03T01:19:46 systemctl status 589
    3  2024-05-03T01:19:49 crontab -e
    4  2024-05-03T01:21:40 kill -9 589
    5  2024-05-03T01:21:43 history

admin@i-03b19b4fc8eebe78c:~$ ps aux | grep badlog
admin        589  0.0  1.7  12508  8128 ?        S    01:18   0:00 /usr/bin/python3 /home/admin/badlog.py
admin        720  0.0  0.1   5264   712 pts/1    S<+  01:19   0:00 grep badlog

admin@i-03b19b4fc8eebe78c:~$ systemctl status 589
● cron.service - Regular background program processing daemon
     Loaded: loaded (/lib/systemd/system/cron.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2024-05-03 01:18:57 UTC; 48s ago
       Docs: man:cron(8)
   Main PID: 565 (cron)
      Tasks: 2 (limit: 521)
     Memory: 4.8M
        CPU: 58ms
     CGroup: /system.slice/cron.service
             ├─565 /usr/sbin/cron -f
             └─589 /usr/bin/python3 /home/admin/badlog.py

May 03 01:18:57 i-03b19b4fc8eebe78c systemd[1]: Started Regular background program processing daemon.
May 03 01:18:57 i-03b19b4fc8eebe78c cron[565]: (CRON) INFO (pidfile fd = 3)
May 03 01:18:57 i-03b19b4fc8eebe78c cron[565]: (CRON) INFO (Running @reboot jobs)

admin@i-03b19b4fc8eebe78c:~$ crontab -e
#Ansible: reboot
# @reboot /home/admin/badlog.py &

admin@i-03b19b4fc8eebe78c:~$ kill -9 589
```