# Developer Challenge NoviCap

For each of the programs below, make a command line tool that works like this:
```
   developer_challenge --test slowapi -n 300
   developer_challenge --test minimum_path_sum -f input_file
```

You are allowed to install gems for this challenge.

### Program 1 - Three hundred responses
Write a program that retrieves 300 requests to this url: http://slowapi.com/delay/0.3
Write out the responses to a file on disk.

```
   response 1<newline>
   response 2<newline>
   ...
```
Make the number of retrievals configurable on the command line tool.


### Program 2 - Minimum path sum

Find the minimum path sum by starting at the top of the triangle below and moving to adjacent numbers on the row below, the minimum total from top to bottom is 15.

```
   3
  7 4
 2 4 6
8 5 9 2
```

That is, 3 + 4 + 6 + 2 = 15.

Find the minimum path sum from the triangle defined in data/triangle

