```sh
admin@i-0f2ed732572066e17:~$ lsof somefile
COMMAND PID  USER   FD   TYPE DEVICE SIZE/OFF   NODE NAME
bash    878 admin   77w   REG  259,1        0 272875 somefile

admin@i-0f2ed732572066e17:~$ cat openfile.sh
#!/bin/bash
exec 66> /home/admin/somefile

admin@i-0f2ed732572066e17:~$ systemctl status 878
● session-3.scope - Session 3 of user admin
     Loaded: loaded (/run/systemd/transient/session-3.scope; transient)
  Transient: yes
     Active: active (running) since Sat 2024-05-11 22:36:01 UTC; 42s ago
      Tasks: 5
     Memory: 4.3M
        CPU: 91ms
     CGroup: /user.slice/user-1000.slice/session-3.scope
             ├─868 sshd: admin [priv]
             ├─876 sshd: admin@pts/0
             ├─878 -bash
             ├─898 systemctl status 878
             └─899 pager

May 11 22:36:01 i-0f2ed732572066e17 systemd[1]: Started Session 3 of user admin.

admin@i-0f2ed732572066e17:~$ ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
...
admin        878  0.0  1.0   7080  4988 pts/0    Ss   22:36   0:00 -bash
...

admin@i-0f2ed732572066e17:~$ ls -l /proc/878/fd
total 0
lrwx------ 1 admin admin 64 May 11 22:36 0 -> /dev/pts/0
lrwx------ 1 admin admin 64 May 11 22:36 1 -> /dev/pts/0
lrwx------ 1 admin admin 64 May 11 22:36 2 -> /dev/pts/0
lrwx------ 1 admin admin 64 May 11 22:36 255 -> /dev/pts/0
l-wx------ 1 admin admin 64 May 11 22:36 77 -> /home/admin/somefile

admin@i-0f2ed732572066e17:~$ exec 77>&-
admin@i-0f2ed732572066e17:~$ lsof somefile
```