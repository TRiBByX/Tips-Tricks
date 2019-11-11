---
layout: post
title:  "Windows and Linux command cheat sheets"
date:   2019-11-11 11:30:00 +0100
categories: Cheat sheet
---
# Various cheatsheets

## Preface
These cheatsheets are not exhaustive and don't partain to anything specific, just commands and tools i have found useful or nice to know over the years. Some i have used extensivly and other not so much. Writing them down have been a good decision though.

These will be maintained and updated as new stuff comes along.

<h2> How to read 
</h2>

Basically it's very simple, the command is on the left and the description or explanation is on the right. Anything with _ around it, like `_word_`, means it is a user input.

## Bash

### Tips
---
* Set aliases for commands like having `ll` mean `ls -lahrt` or the like. This is edited in the .bashrc. add the following: `alias _alias_='_command_'` 
* Need line numbers in vim? Append `set num` to the .vimrc. 

### Commands
---

| Command | Description |
|-------|--------|
| `netstat -lntp` | Shows running ports and what's listening on them. | 
| `find -name 'filename' xargs rm` | Delete any file with a specific name. | 
| `tree -a` | **Requires Tree**. Display a tree structure of a folder. |
| `mv _origin_foldername_/* _targetfolder_/` | Move folder and subfolder (only subfolder non-recursive) to target folder. |
| `l -lahrt` | `-l` use a long listing format, `-a` don't ignore entries starting with '.', `-h` human readable, `-r` reverse order while sorting, `-t` sort by newest. |
| `virtualenv -p python _name of env_` | Create a python virtual environment for testing and isolation. |
| `ps -aux | less` | List running services into less for readability. |
| `watch -n 0.5 'ps -aux'` | Watch running services at an interval of 0.5 seconds. |
| `curl ipinfo.ip/ip` | Find external ip address. |
| `cat _filename_ | less` | Print file contents and pipe into Less for readability. |
| `sudo dpkg -i _filename_` | install .deb files |
| `iperf -s` &  `iperf -c _ip_`| To check connection between two machines. `-s` is for the server, is to connect to the server. |
| `sed -i 's/\<_orig_string\>/_new_string_' _path_to_file_` | Replace original string with a new string in a file. |
| `scp _filename_ _user_@_ip/hostname_:_host_directory_` | Copies a file between a host machine and remote machine. Ex. `scp c:\users\user\file.txt root@127.0.0.1:usr/users/home` |
| `watch -n _time_ '_command_'` | See output of `_command_` updated every `_time_` seconds |
| `watch -n 0.5 'netstat -nat grep -v -i listen` | See live tcp connections excluding ones that are listening |
| `tcpdump -w _filename_.pcap` | Capture a .pcap dump of local traffic. |
| `ssh -L _remote_port_:_localhost_:_localport_ _user_@_ip/hostname_` | Reverse port, like port forwarding. |
| `df -h` | See diskspace. `-h` makes it human readable. |
| `top` | Check ressource usage. Press 1 to see per core usage. |
| `cat /etc/*release` | Check distro. |




<h2>Windows
</h2>

<h3>Tips
</h3>

* `win + ctrl + b` restarts the graphics driver on windows.
### Commands
#### CMD

| Command | Description |
|-------|--------|
| `psftp _putty_sessions_name_` then `put _filename_` | **REQUIRES PUTTY**. Opens a psftp shell and put means to transfer the file through the putty session. |
| `netstat -an | find /i "port|listening|esbalished|etc"` | Like netstat in linux. Find specifies what you are looking for. `-i` makes in case insesitive. |

#### Powershell
Nothing to see here... yet!
