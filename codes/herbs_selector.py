import random
import os 

herbs_file = open("herbs_document.txt")
herbs_list = []

for herb in herbs_file:
    herbs_list.append(herb)

print(herbs_list[random.randint(0, len(herbs_list) - 1)])
