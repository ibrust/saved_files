import random
import os

commands = []
with open("ls") as ls_file:
    line = ls_file.readline()
    commands.append(line)
    while line:
        line = ls_file.readline()
        commands.append(line)

print(commands[random.randint(0, len(commands) - 1)])
