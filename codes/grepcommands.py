import random
import os

commands = []
with open("grep") as grepfile:
    line = grepfile.readline()
    commands.append(line)
    while line:
        line = grepfile.readline()
        commands.append(line)

print(commands[random.randint(0, len(commands) - 1)])
