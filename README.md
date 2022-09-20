# ShellScripts
Some reusable shellscripts

### How to use these scripts:
```
$ git clone https://github.com/taimoorzaeem/shellscripts.git
$ cd shellscripts/tests/
$ ./runtests.sh
```

If all tests are passed, then you should be good to use the scripts in the `src` directory.

Make sure these scripts are executable. If they are not, make them executable by:
```
$ chmod u+x <script-name>
```

Currently there is only one script:

`replspace` which replace all spaces in a filename with underscore for a given directory.

#### Example
```
./replspace Test/
```
To install this script, run the following from project root directory:
```
$ make changemod
$ sudo make install
```
This should install the script to `/usr/bin`.

To uninstall this script:
```
$ sudo make uninstall
```

Note: This script currently does not work recursively. I'll make updates in the future.
