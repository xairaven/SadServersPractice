```sh
admin@i-00518d326285b9698:~$ ls -lSa data/ | head -n 4 | tail -n 1 | awk '{print $NF}'
file76.txt
admin@i-00518d326285b9698:~$ diff -q ./data/file76.txt ./data/file7.txt
Files ./data/file76.txt and ./data/file7.txt differ
admin@i-00518d326285b9698:~$ echo eureka > solution
```