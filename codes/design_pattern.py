import random

design_patterns = ['abstract factory', 'builder', 'factory method', 'prototype', 'singleton', 'adapter', 'bridge', 'composite', 'decorator', 'facade', 'flyweight', 'proxy', 'chain of responsibility', 'command', 'interpreter', 'iterator', 'mediator', 'memento', 'observer', 'state', 'strategy', 'template method', 'visitor']


for x in range(2):
    print(design_patterns[random.randint(0,len(design_patterns)-1)], " | ", end='')
