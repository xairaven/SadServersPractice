```sh
admin@i-0a203852edbc16693:~$ cut -f2 -d " " scores.txt | tr "\n" + | head -c -1 > arithmetic
admin@i-0a203852edbc16693:~$ bc arithmetic
bc 1.07.1
Copyright 1991-1994, 1997, 1998, 2000, 2004, 2006, 2008, 2012-2017 Free Software Foundation, Inc.
This is free software with ABSOLUTELY NO WARRANTY.
For details type `warranty'.
520.4
quit
admin@i-0a203852edbc16693:~$ echo 5.20 > solution
```