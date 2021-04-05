Locate the ruby documentation for methods File::path and File#path. How are they different?

File::path (class method, can be called on the class)

ex: puts File.path('bin')

returns the string representation of the path

File#path (instance method, can be called on objects)

ex: f = File.new('test.txt')

returns the pathname used to create file as a string