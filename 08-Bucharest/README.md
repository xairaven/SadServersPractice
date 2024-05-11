# "Bucharest": Connecting to Postgres

**Link:** [*scenario/bucharest*](https://sadservers.com/scenario/bucharest)

**Level:** Easy

**Type:** Fix

**Description:** A web application relies on the PostgreSQL 13 database present on this server. However, the connection to the database is not working. Your task is to identify and resolve the issue causing this connection failure. The application connects to a database named `app1` with the user `app1user` and the password `app1user`.

*Credit PykPyky*

**Test:** Running `PGPASSWORD=app1user psql -h 127.0.0.1 -d app1 -U app1user -c '\q'` succeeds (does not return an error).

**Time to Solve:** 10 minutes.

**Best Time:** 19 mins 11 secs