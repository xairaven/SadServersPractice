admin@i-0eb8b479c3694c3ba:~$ ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
...
root         618  0.0  0.2   8504  1216 ?        Ss   23:11   0:00 /usr/sbin/knockd -i lo
...

admin@i-0eb8b479c3694c3ba:~$ systemctl status knockd
● knockd.service - Port-Knock Daemon
     Loaded: loaded (/lib/systemd/system/knockd.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2024-05-10 23:11:29 UTC; 3min 14s ago
       Docs: man:knockd(1)
   Main PID: 618 (knockd)
      Tasks: 1 (limit: 524)
     Memory: 732.0K
        CPU: 9ms
     CGroup: /system.slice/knockd.service
             └─618 /usr/sbin/knockd -i lo

May 10 23:11:29 i-0eb8b479c3694c3ba systemd[1]: Started Port-Knock Daemon.
May 10 23:11:29 i-0eb8b479c3694c3ba knockd[618]: starting up, listening on lo

admin@i-0eb8b479c3694c3ba:~$ cat /etc/knockd.conf
cat: /etc/knockd.conf: Permission denied
admin@i-0eb8b479c3694c3ba:~$ ls -la /etc/knockd.conf
-r--r----- 1 root root 169 Sep 19  2023 /etc/knockd.conf

admin@i-0eb8b479c3694c3ba:~$ curl localhost
curl: (7) Failed to connect to localhost port 80: Connection refused

admin@i-0eb8b479c3694c3ba:~$ nmap -p1-65535 localhost
Starting Nmap 7.80 ( https://nmap.org ) at 2024-05-10 23:30 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.000066s latency).
Not shown: 65532 closed ports
PORT     STATE SERVICE
22/tcp   open  ssh
6767/tcp open  bmc-perf-agent
8080/tcp open  http-proxy

Nmap done: 1 IP address (1 host up) scanned in 1.17 seconds

admin@i-0eb8b479c3694c3ba:~$ curl localhost
Who is there?admin@i-0eb8b479c3694c3ba:~$
