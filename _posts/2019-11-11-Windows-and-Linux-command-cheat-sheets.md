---
layout: post
title:  "Windows and Linux command cheat sheets"
date:   2019-11-11 11:30:00 +0100
categories: Cheat sheet
---

<div markdown="1">
# Various cheatsheets
## Preface
These cheatsheets are not exhaustive and don't partain to anything specific, just commands and tools i have found useful or nice to know over the years. Some i have used extensivly and other not so much. Writing them down have been a good decision though.

These will be maintained and updated as new stuff comes along.

## How to read
Basically it's very simple, the command is on the left and the description or explanation is on the right. Anything with _ around it, like `_word_`, means it is a user input.
## Bash
### Tips
---
* Set aliases for commands like having `ll` mean `ls -lahrt` or the like. This is edited in the .bashrc. add the following: `alias _alias_='_command_'` 
* Need line numbers in vim? Append `set num` to the .vimrc.    

### Commands

---
</div>

<div>
<table>
<thead>
<tr>
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>netstat -lntp</code></td>
<td>Shows running ports and what's listening on them.</td>
</tr>
<tr>
<td><code>find -name 'filename' xargs rm<code></td>
<td>Delete any file with a specific name.</td>
</tr>
<tr>
<td><code>tree -a</code></td>
<td><strong>Requires Tree</strong>. Display a tree structure of a folder.</td>
</tr>
<tr>
<td><code>mv _origin_foldername_/* _targetfolder_/</code></td>
<td>Move folder and subfolder (only subfolder non-recursive) to target folder.</td>
</tr>
<tr>
<td><code>l -lahrt</code></td>
<td><code>-l</code> use a long listing format, <code>-a</code> don't ignore entries starting with '.', <code>-h</code> human readable, <code>-r</code> reverse order while sorting, <code>-t</code> sort by newest</td>
</tr>
<tr>
<td><code>virtualenv -p python _name of env_</code></td>
<td>Create a python virtual environment for testing and isolation.</td>
</tr>
<tr>
<td><code>ps -aux | less</code></td>
<td>List running services into less for readability.</td>
</tr>
<tr>
<td><code>watch -n 0.5 'ps -aux'</code></td>
<td>Watch running services at an interval of 0.5 seconds.</td>
</tr>
<tr>
<td><code>curl ipinfo.ip/ip</code></td>
<td>Find external ip address.</td>
</tr>
<tr>
<td><code>cat _filename_ | less</code></td>
<td>Print file contents and pipe into Less for readability</td>
</tr>
<tr>
<td><code>sudo dpkg -i _filename_</code></td>
<td>install .deb files</td>
</tr>
<tr>
<td><code>iperf -s</code>&amp;<code>i perf -c _ip_</code></td>
<td>To check connection between two machines. <code>-s</code> is for the server, <code>-c _ip_</code> is to connect to the server.</td>
</tr>
<tr>
<td><code>sed -i 's/\&lt;_orig_string\&gt;/_new_string_' _path_to_file_</code></td>
<td>Replace original string with a new string in a file.</td>
</tr>
<tr>
<td><code>scp _filename_ _user_@_ip/hostname_:_host_directory_</code></td>
<td>Copies a file between a host machine and remote machine. Ex. scp c:\users\user\file.txt root@127.0.0.1:usr/users/home</td>
</tr>
<tr>
<td><code>`watch -n 0.5 'netstat -nat grep -v -i listen'</code></td>
<td>See live tcp connections excluding ones that are listening</td>
</tr>
<tr>
<td><code>watch -n _time_ '_command_'</code></td>
<td>See output of <code>_command_</code> updated every <code>_time_</code> seconds</td>
</tr>
<tr>
<td><code>tcpdump -w _filename_.pcap</code></td>
<td>Capture a .pcap dump of local traffic.</td>
</tr>
<tr>
<td><code>ssh -L _remote_port_:_localhost_:_localport_ _user_@_ip/hostname_</code></td>
<td>Reverse port, like port forwarding.</td>
</tr>
<tr>
<td><code>df -h</code></td>
<td>See diskspace. <code>-h</code> makes it human readable</td>
</tr>
<tr>
<td><code>top</code></td>
<td>Check ressource usage. Press 1 to see per core usage</td>
</tr>
<tr>
<td><code>cat /etc/*release</code></td>
<td>Check distro.</td>
</tr>
<div markdown="1">

## Windows
### Tips
* `win + ctrl + b` restarts the graphics driver on windows.
### Commands
#### CMD

</div>

<div>
    <table>
        <thead>
            <tr>
                <th>Command</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>psftp _putty_sessions_name</code> & <code>put _filename_</code></td>
                <td><strong>REQUIRES PUTTY</strong>. Opens a psftp shell and put means to transfer the file through the putty session.</td>
            </tr>
            <tr>
                <td><code>netstat -an | find /i "port|listening|esbalished|etc"</code></td>
                <td>Like netstat in linux. Find specifies what you are looking for. <code>/i</code> makes in case insesitive.</td>
            </tr>
        </tbody>
    </table>
</div>

<div markdown="1">

#### Powershell
Nothing to see here... yet!

</div>