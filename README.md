# EnFuzzer

tool for ensemble fuzzing

The latest version of enfuzzer was moved to (https://yulinwei.inthefurture).


##CVE list
<datatables>
^ CVE ID ^ 程序 ^ 类型 ^ 寻找方法 ^
| {{cve>CVE-2018-11212|CVE-2018-11212}} | libjpeg | Divide-by-zero error | SAFL-afl |
| {{cve>CVE-2018-11213|CVE-2018-11213}} | libjpeg | Segmentation fault | SAFL-afl |
| {{cve>CVE-2018-11214|CVE-2018-11214}} | libjpeg | Segmentation fault | SAFL-afl |
| {{cve>CVE-2018-11363|CVE-2018-11363}} | PDFGen | Heap buffer overflow | SAFL-afl-已有 |
| {{cve>CVE-2018-11365|CVE-2018-11365}} | ReadStat | Infinite loop | SAFL-lib |
| {{cve>CVE-2018-11364|CVE-2018-11364}} | ReadStat | Memory leak | SAFL-lib |
| {{https://github.com/ChijinZ/security_advisories/tree/master/pdffigures|无}} | pdffigures | Segmentation fault | SAFL-afl |
| {{https://github.com/Orc/discount/issues/188|无}} | discount | Memory leak | SAFL-afl |
| {{https://github.com/0vercl0k/rp/issues/23|无}} | rp | Memory leak | SAFL-afl |
| {{https://github.com/samtools/htslib/issues/728|无}} | htslib | SEGV | SAFL-afl |
| {{https://github.com/fanfuqiang/zcc/issues/2|无}} | zcc | Global buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11468|CVE-2018-11468}} | discount | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-12495|CVE-2018-12495}} | discount | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11503|CVE-2018-11503}} | discount | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11504|CVE-2018-11504}} | discount | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11097|CVE-2018-11097}} | cstring | Memory leak | SAFL-afl |
| {{cve>CVE-2018-11536|CVE-2018-11536}} | md4c | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11545|CVE-2018-11545}} | md4c | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11546|CVE-2018-11546}} | md4c | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11547|CVE-2018-11547}} | md4c | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-11813|CVE-2018-11813}} | libjpeg | Large loop | SAFL-afl |
| {{cve>CVE-2018-12064|CVE-2018-12064}} | tinyexr | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-12092|CVE-2018-12092}} | tinyexr | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-12093|CVE-2018-12093}} | tinyexr | Memory leak | SAFL-afl |
| {{cve>CVE-2018-12503|CVE-2018-12503}} | tinyexr | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-12504|CVE-2018-12504}} | tinyexr | Assert failure | SAFL-afl |
| {{cve>CVE-2018-12687|CVE-2018-12687}} | tinyexr | Assert failure | SAFL-afl |
| {{cve>CVE-2018-12688|CVE-2018-12688}} | tinyexr | Segmentation fault | SAFL-afl |
| {{cve>CVE-2018-12108|CVE-2018-12108}} | lepton  | SIGFPE | SAFL-afl |
| {{cve>CVE-2018-12109|CVE-2018-12109}} | FLIF    | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13030|CVE-2018-13030}} | jpeg-compressor  | Stack buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13419|CVE-2018-13419}} | libsndfile  | Memory leak | SAFL-afl |
| {{cve>CVE-2018-13420|CVE-2018-13420}} | gperftools  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13421|CVE-2018-13421}} | fast-cpp-csv-parser  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13794|CVE-2018-13794}} | cat-image  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13795|CVE-2018-13795}} | gravity  | Endless loop | SAFL-afl |
| {{cve>CVE-2018-13843|CVE-2018-13843}} | htslib  | Memory Leak | SAFL-afl |
| {{cve>CVE-2018-13844|CVE-2018-13844}} | htslib  | Memory Leak | SAFL-afl |
| {{cve>CVE-2018-13845|CVE-2018-13845}} | htslib  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13846|CVE-2018-13846}} | Bento4  | Buffer overread | SAFL-afl |
| {{cve>CVE-2018-13847|CVE-2018-13847}} | Bento4  | SEGV | SAFL-afl |
| {{cve>CVE-2018-13848|CVE-2018-13848}} | Bento4  | SEGV | SAFL-afl |
| {{cve>CVE-2018-13996|CVE-2018-13996}} | genann  | Stack buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13997|CVE-2018-13997}} | genann  | SEGV | SAFL-afl |
| {{https://github.com/kornelski/jpeg-compressor/issues/11|无}} | jpeg-compressor | Global buffer overflow | SAFL-afl |
| {{https://github.com/fouzhe/security/tree/master/jpeg-compressor|无}} | jpeg-compressor | SEGV | SAFL-afl |
| {{https://github.com/fouzhe/security/tree/master/jpeg-compressor|无}} | jpeg-compressor | negative-size-param | SAFL-afl |
| {{https://github.com/sahaRatul/sela/issues/16|无}} | sela | Divide-by-zero error | SAFL-afl |
| {{cve>CVE-2018-13037|CVE-2018-13037}} | jpeg-compressor | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-13833|CVE-2018-13833}} | cmft  | Stack buffer overflow | SAFL-afl |
| {{https://github.com/beschulz/wav2json/issues/26|无}} | wav2json | Assert Failure | SAFL-afl |
| {{https://github.com/ARM-software/astc-encoder/issues/24|无}} | astc-encoder | Memory Leak | SAFL-afl |
| {{cve>CVE-2018-14047|CVE-2018-14047}} | pngwriter  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14048|CVE-2018-14048}} | libpng  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14049|CVE-2018-14049}} | libwav  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14050|CVE-2018-14050}} | libwav  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14051|CVE-2018-14051}} | libwav  | infinite loop | SAFL-afl |
| {{cve>CVE-2018-14052|CVE-2018-14052}} | libwav  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14072|CVE-2018-14072}} | libsixel  | Memory leak | SAFL-afl |
| {{cve>CVE-2018-14073|CVE-2018-14073}} | libsixel  | Memory leak | SAFL-afl |
| {{cve>CVE-2018-14521|CVE-2018-14521}} | aubio  | SEGV signal | SAFL-afl |
| {{cve>CVE-2018-14522|CVE-2018-14522}} | aubio  | SEGV signal | SAFL-afl |
| {{cve>CVE-2018-14523|CVE-2018-14523}} | aubio  | Global buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14531|CVE-2018-14531}} | Bento4  | Buffer Overflow | SAFL-afl |
| {{cve>CVE-2018-14532|CVE-2018-14532}} | Bento4  | Buffer Overflow | SAFL-afl |
| {{cve>CVE-2018-14549|CVE-2018-14549}} | libwav  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14550|CVE-2018-14550}} | libpng  | Stack buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14562|CVE-2018-14562}} | THULAC  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14563|CVE-2018-14563}} | THULAC  | alloc-dealloc-mismatch | SAFL-afl |
| {{cve>CVE-2018-14564|CVE-2018-14564}} | THULAC  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14565|CVE-2018-14565}} | THULAC  | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14584|CVE-2018-14584}} | Bento4  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14585|CVE-2018-14585}} | Bento4  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14586|CVE-2018-14586}} | Bento4  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14587|CVE-2018-14587}} | Bento4  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14588|CVE-2018-14588}} | Bento4  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14589|CVE-2018-14589}} | Bento4  | Heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14590|CVE-2018-14590}} | Bento4  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14736|CVE-2018-14736}} | pbc  | Buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14737|CVE-2018-14737}} | pbc  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14738|CVE-2018-14738}} | pbc  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14739|CVE-2018-14739}} | pbc  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14740|CVE-2018-14740}} | pbc  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14741|CVE-2018-14741}} | pbc  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14742|CVE-2018-14742}} | pbc  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14743|CVE-2018-14743}} | pbc  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14744|CVE-2018-14744}} | pbc  | Use after free | SAFL-afl |
| {{https://github.com/axiomatic-systems/Bento4/issues/295#issue-343395965|无}} | Bento4 | Memory Leak | SAFL-afl |
| {{https://github.com/axiomatic-systems/Bento4/issues/296#issue-343397694|无}} | Bento4 | Memory Leak | SAFL-afl |
| {{https://github.com/axiomatic-systems/Bento4/issues/297#issue-343397883|无}} | Bento4 | Memory Leak | SAFL-afl |
| {{https://github.com/glennrp/libpng/issues/239|无}} | libpng | Memory Leak | SAFL-afl |
| {{https://github.com/pts/imgdataopt/issues/1|无}} | imgdataopt | SIGFPE | SAFL-afl |
| {{https://github.com/ChijinZ/security_advisories/tree/master/lldb.rs|无}} | lldb.rs | SEGV | SAFL-afl |
| {{https://github.com/rvoicilas/inotify-tools/issues/94#issue-341786189|无}} | inotify-tools | Memory leaks | SAFL-afl |
| {{https://github.com/dav/word2vec/issues/26#issue-341796670|无}} | word2vec | Memory leaks | SAFL-afl |
| {{https://github.com/kgabis/parson/issues/103#issue-342135911|无}} | parson | Memory leaks | SAFL-afl |
| {{https://github.com/cloudwu/pbc/issues/124#issue-343922879|无(CVE-2018-12915)}} | pbc | Global buffer overflow | SAFL-afl |
| {{https://github.com/cloudwu/pbc/issues/124#issuecomment-407315207|无(CVE-2018-12917)}} | pbc | Buffer overflow | SAFL-afl |
| {{https://github.com/thunlp/NRE/issues/27#issuecomment-407260540|无}} | thunlp/NRE | SEGV | SAFL-afl |
| {{https://github.com/thunlp/NRE/issues/27#issue-343860753|无}} | thunlp/NRE | SEGV | SAFL-afl |
| {{https://github.com/thunlp/Fast-TransX/issues/38#issue-343864008|无}} | thunlp/Fast-TransX | SEGV | SAFL-afl |
| {{https://github.com/thunlp/Fast-TransX/issues/38#issuecomment-407266299|无}} | thunlp/Fast-TransX | SEGV | SAFL-afl |
| {{https://github.com/thunlp/Fast-TransX/issues/38#issuecomment-407265099|无}} | thunlp/Fast-TransX | SEGV | SAFL-afl |
| {{https://github.com/cloudwu/pbc/issues/122#issue-343904609|无}} | pbc| SEGV | SAFL-afl |
| {{https://github.com/cloudwu/pbc/issues/122#issuecomment-407366699|无}} | pbc | SEGV | SAFL-afl |
| {{cve>CVE-2018-14944|CVE-2018-14944}} | jpeg_encoder  | SEGV | SAFL-afl |
| {{cve>CVE-2018-14945|CVE-2018-14945}} | jpeg_encoder  | heap buffer overflow | SAFL-afl |
| {{cve>CVE-2018-14946|CVE-2018-14946}} | pdf2json  | Alloc_dealloc_mismatch | SAFL-afl |
| {{cve>CVE-2018-14947|CVE-2018-14947}} | pdf2json  | Alloc_dealloc_mismatch | SAFL-afl |
| {{cve>CVE-2018-14948|CVE-2018-14948}} | sound  | Alloc-dealloc-mismatch | SAFL-afl |
| {{https://github.com/fouzhe/security/tree/master/sound#allocate-failure-in-function-openwavfile|无}} | sound | Allocate Failure | SAFL-afl |
| {{https://github.com/fouzhe/security/tree/master/pdf2json#detected-memory-leaks |无}} | pdf2json | memory leaks | SAFL-afl |

</datatables>

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

