import random

patterns = ["mediator", "composite", "iterator"]    # the patterns to include in the combined structure

all_patterns = ["factory", "abstract factory", "builder", "singleton", "prototype",
                "adapter", "bridge", "composite", "decorator", "facade", "flyweight",
                "proxy", "chain of responsibility", "command", "interpreter", "iterator", "mediator",
                "memento", "observer", "state", "strategy", "template method", "visitor"]

pattern_format = "most representative left to right order: "
for x in range(len(patterns)):
    chosen_pattern = patterns[random.randint(0, len(patterns)-1)]
    pattern_format += chosen_pattern + " > "
    patterns.remove(chosen_pattern)

print(pattern_format)
#print(all_patterns[random.randint(1, len(all_patterns)-1)])
