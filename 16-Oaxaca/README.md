# "Oaxaca": Close an Open File

**Link:** [*scenario/oaxaca*](https://sadservers.com/scenario/oaxaca)

**Level:** Medium

**Type:** Fix

**Description:** The file `/home/admin/somefile` is open for writing by some process. Close this file without killing the process.

**Test:** `lsof /home/admin/somefile` returns nothing.

**Time to Solve:** 15 minutes.

**Best Time:** 7 mins 56 secs