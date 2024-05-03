```sh
admin@i-01c409982340ff9e0:~$ grep -c "Alice" /home/admin/*.txt
/home/admin/11-0.txt:398
/home/admin/1342-0.txt:1
/home/admin/1661-0.txt:12
/home/admin/84-0.txt:0
admin@i-01c409982340ff9e0:~$ expr 398 + 1 + 12
411
admin@i-01c409982340ff9e0:~$ sed -n '33,34p' /home/admin/1342-0.txt 
                                Alice
                        156 CHARING CROSS ROAD
admin@i-01c409982340ff9e0:~$ echo 411156 > /home/admin/solution
admin@i-01c409982340ff9e0:~$ md5sum /home/admin/solution
d80e026d18a57b56bddf1d99a8a491f9  /home/admin/solution
```