# QR Converter V2

This script uses Ruby, Ruby's CSV parser and [pngqr](https://github.com/andys/pngqr) to convert a CSV file to QR Codes.

All you should need is a recent version of ruby and install the [pngqr](https://github.com/andys/pngqr) code.

```
$ gem install pngqr
```

To run from the command line:

1. Alter the name of the CSV file you are importing.
2. Add the CSV file to the same folder with the qrcode.rb file.
3. Alter the codes and file names to match your required file name and code.
4. Run the file.

```
$ ruby qrcode.rb
```

You may want to remove 'puts file_name' to speed up the generation of QR Codes.