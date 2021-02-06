import random


books = ['apache 2.0', 'unix network programming volume 1, sockets', 'unix network programming volume 2, interprocess communication', 'HTML5 for masterminds',
         'compiler construction', 'SQL in 20 minutes', 'python essential reference by beazley', 'network operating systems', 'advanced programming in the unix environment',
         'concepts of programming languages dong book', 'database systems', 'maintainable javascript', 'high performance javascript', 'javascript patterns', 'javascript ninja',
         'javascript rino book', 'java introduction book', 'big ruby book', 'big php book', 'linux tiger book', 'linux bible', 'postgresql rat', 'blue prolog', 'tiger graphics book',
         'c# stork book', 'deep C secrets', 'C reference', 'C STL book', 'trex OS book', 'mySQL muroch book', 'pthreads book', 'MPI book', 'thick web tech book', '9 python projects',
         'big AI book', 'bash scripting', 'code complete', 'fundamentals of software engineering indian book', 'sarkars software engineering book', 'numerical analysis',
         'clean code', 'barbosas algorithms', 'fortran algorithms book', 'UML modeling book', 'OO design book', 'django book', 'butler class parallelism book', 'berkley parallelism book',
         'class computer organization book', 'hennesey computer organization book', 'hennessey architecture book', 'android dummies book', 'fix your PC dummies book',
         'butler computer systems book', 'C++ STL', 'C++ templates', 'MIT concepts & models book', 'unit testing book', 'assembly language book']

print(books[random.randint(0, len(books) - 1)])
