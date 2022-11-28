# Telegram Notifications

Here I place working files, which I used  in work.

In python file I made CVE filter to exclude CVE's from notifications, cause I'm tired of every alert with CVE :)

Use the first post (https://github.com/n0rthl1ght/wazuh_info_collection#useful-posts), copy files, change permissions for these files and add bot & chat ID's.

**Don't forget to add integrations to ossec.cong**
```
  <integration>
    <name>custom-telegram</name>
    <level>8</level>
    <hook_url>https://api.telegram.org/botXXXXXXXXXX:XXXXXXXXXXXXXXXXX/sendMessage</hook_url>
    <alert_format>json</alert_format>
  </integration>
  ```
