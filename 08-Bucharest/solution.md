```sh
admin@i-0159e9c963b0c530c:~$ PGPASSWORD=app1user psql -h 127.0.0.1 -d app1 -U app1user -c '\q'
psql: error: FATAL:  pg_hba.conf rejects connection for host "127.0.0.1", user "app1user", database "app1", SSL on
FATAL:  pg_hba.conf rejects connection for host "127.0.0.1", user "app1user", database "app1", SSL off

admin@i-0159e9c963b0c530c:~$ sudo vim /etc/postgresql/13/main/pg_hba.conf
# Replaced all "Reject" on "Trust"
admin@i-0159e9c963b0c530c:~$ sudo systemctl restart postgresql
admin@i-0159e9c963b0c530c:~$ PGPASSWORD=app1user psql -h 127.0.0.1 -d app1 -U app1user -c '\q'
```