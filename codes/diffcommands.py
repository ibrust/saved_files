import random
import os

commands = []
with open("diff") as diff_file:
    line = diff_file.readline()
    commands.append(line)
    while line:
        line = diff_file.readline()
        commands.append(line)

print(commands[random.randint(0, len(commands) - 1)])
