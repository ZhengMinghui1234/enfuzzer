# EnFuzzer

tool for ensemble fuzzing

The latest version of enfuzzer was moved to (https://yulinwei.inthefurture).


## CVE list

| CVE ID | Projects  | CVE type |
| :------------ |:---------------:|:---------------:|
|CVE-2018-11097(https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-11097)	|   cstring	      |Memory leak      |
| col 3 is      | some wordy text | $1600 |
| col 2 is      | centered        |   $12 |
| zebra stripes | are neat        |    $1 |

## Install
To install our EnFuzzer, you can just execute in shell:
```sh
./install
```

Arch Linux and Ubuntu 16.04 are tested, but it should work on other Linux distributions. Please configure the `PATH` environment variable in your shell first, to include `/opt/enfuzzer/`.

Execute in shell:

```sh
export PATH="/opt/enfuzzer:$PATH"
```


Or you can directly insert the content above in configuration files such as `~/.bashrc`.


### Configure and Build
The build stage of target application is easy and totally the same as AFL, which can be completed with afl-gcc.

For efficient fuzzing, you can build target application with ASAN or other Sanitizer. You can complete it easily with our another tool [SAFL](https://github.com/hghwng/tools-date)


### Start fuzzing

#### Seeds preparation

After building target application, you can use EnFuzzer for fuzzing. Before it, you need to create a seed directory for seeds preparation.
```sh
❯ mkdir in & cp ../seed in
❯ ll
[*]       app*
[*]       in/
```

#### Direct invocation

You need to have `tmux` installed (`sudo apt-get install tmux`), then execute:

```sh
EnFuzzer ./app 
```

![image](https://github.com/131250106/enfuzzer/blob/master/example/result.png)

#### AFL customization
To customize parameters of AFL, add `-afl-mode` at the end of the command:


```sh
EnFuzzer -afl-mode -my-afl-parameters ./app
```

See [documentation of AFL](http://lcamtuf.coredump.cx/afl/README.txt) for advanced tuning.

