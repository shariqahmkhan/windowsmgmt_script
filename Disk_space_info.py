'''
useful commands
Get-CimInstance -ClassName Win32_LogicalDisk

import getpass
getpass.getuser()

import psutil

hdd = psutil.disk_usage('/')

'''




import psutil
import getpass
import os

# change dir to desktop current user directory
user_space = getpass.getuser()
os.chdir(r"C:\Users\\" + user_space + "\Desktop")

# get all disk
disk_list = psutil.disk_partitions()

# iterate over each disk and disk info
i = 0
for each_disk in disk_list:
    disk_info = psutil.disk_usage(disk_list[i][0])
    with open("disk_info.txt", "a") as f:
        f.write(disk_list[i][0] + "\n")
        f.write("Total space: ")
        f.write(str(disk_info.total) + "\n")
        f.write("Free space: ")
        f.write(str(disk_info.free) + "\n")
        f.write("User space: ")
        f.write(str(disk_info.total - disk_info.free) + "\n")
        f.write("\n")

    i = i + 1
