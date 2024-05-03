ps aux | grep badlog            # Got 589
systemctl status 589            # cron!
crontab -e                      # Commented job
kill -9 589                     # Killed process