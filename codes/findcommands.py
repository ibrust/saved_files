import random
import os

commands = []
with open("find") as find_file:
    line = find_file.readline()
    commands.append(line)
    while line:
        line = find_file.readline()
        commands.append(line)

print(commands[random.randint(0, len(commands) - 1)])
