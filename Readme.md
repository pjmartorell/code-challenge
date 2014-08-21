# Developer Challenge NoviCap

For each of the programs below, make a command line tool that works like this:
```
   developer_challenge --test slowapi -n 300
   developer_challenge --test first_ten_digits -f input_file
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


### Program 2 - Three hundred digits
Work out the first ten digits of the sum of three-hundred 50-digit numbers.
An example file is provided in the data folder.
Make the input file configurable with the command line tool.

Ruby makes this problem really easy using big number libraries, but can you do it without them?
