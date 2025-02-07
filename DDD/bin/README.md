# Compile Binaries

- When you compile the binaries for DDD simulation, you need to target specific CPU archtecture to avoid the illegal instruction runtime error.
- Check the CPU architecture of Palmetto cluster with `whatsfree` command


```
    TOTAL NODES: 427  TOTAL CORES: 32784  NODES FREE: 149  CORES FREE: 15748  NODES OFFLINE: 4  NODES RESERVED: 0

                                         CORE CT.   RAM     CHIP MFR.  CPU GEN         INTERCONNECT     GPU TYPE
    PHASE s00a   ONLINE =  1  FREE =  0   40 cores  1007GB  intel      broadwell       fdr,56g,10ge     N/A
    PHASE s00b   ONLINE =  1  FREE =  0   40 cores  1511GB  intel      broadwell       fdr,56g,10ge     N/A
    PHASE s00c   ONLINE =  3  FREE =  0   80 cores  1511GB  intel      skylake         fdr,56g,10ge     N/A
    PHASE s00d   ONLINE =  4  FREE =  2   36 cores  1510GB  intel      cascadelake     fdr,56g,10ge     N/A
    PHASE s00e   ONLINE =  1  FREE =  1   56 cores  1007GB  intel      icelake         hdr,100g,25ge    N/A
    PHASE s00f   ONLINE =  1  FREE =  0   64 cores  1006GB  amd        milan           hdr,100g,25ge    N/A
    PHASE s00g   ONLINE =  1  FREE =  1  192 cores  1509GB  amd        genoa           hdr,200g,25ge    N/A
    PHASE s13a   ONLINE =  2  FREE =  0   40 cores   376GB  intel      skylake         hdr,100g,25ge    4x v100
    PHASE s13b   ONLINE = 65  FREE = 16   40 cores   376GB  intel      skylake         hdr,100g,25ge    2x v100
    PHASE s13c   ONLINE = 10  FREE =  1   40 cores   754GB  intel      skylake         hdr,100g,25ge    2x v100
    PHASE s14    ONLINE = 28  FREE = 28   40 cores   375GB  intel      cascadelake     hdr,100g,25ge    2x v100
    PHASE s15    ONLINE = 22  FREE = 18   56 cores   376GB  intel      cascadelake     hdr,100g,25ge    2x v100s
    PHASE s16    ONLINE = 34  FREE =  0   56 cores   372GB  intel      cascadelake     hdr,100g,25ge    2x a100
    PHASE s17    ONLINE = 26  FREE =  6   64 cores   250GB  intel      icelake         hdr,100g,25ge    2x a100
    PHASE s18    ONLINE = 40  FREE = 40   64 cores   250GB  intel      icelake         hdr,100g,25ge    2x a100
    PHASE s19    ONLINE = 62  FREE = 12  192 cores   754GB  amd        genoa           hdr,200g,25ge    N/A
    PHASE s2019a ONLINE =  4  FREE =  4   48 cores   377GB  intel      cascadelake     fdr,56g,10ge     N/A
    PHASE s2022a ONLINE =  1  FREE =  1   64 cores   503GB  amd        milan           hdr,100g,25ge    N/A
    PHASE s2022b ONLINE =  1  FREE =  1   72 cores   250GB  intel      icelake         hdr,100g,25ge    N/A
    PHASE s2022c ONLINE =  1  FREE =  1   56 cores   372GB  intel      cascadelake     hdr,100g,25ge    2x a40
    PHASE s2023a ONLINE =  3  FREE =  3   64 cores   250GB  intel      icelake         hdr,100g,25ge    N/A
    PHASE s2023b ONLINE =  1  FREE =  0   64 cores  1006GB  amd        milan           hdr,100g,25ge    4x a100
    PHASE s2024a ONLINE =  1  FREE =  0   64 cores   250GB  intel      sapphirerapids  hdr,100g,25ge    4x l40s
    PHASE ai01   ONLINE =  1  FREE =  1   40 cores   500GB  intel      haswell         hdr,100g,100ge   8x v100
    PHASE ai02   ONLINE =  2  FREE =  0  128 cores  1007GB  amd        rome            hdr,100g,100ge   8x a100
    PHASE ai03   ONLINE =  2  FREE =  0  104 cores  1006GB  intel      sapphirerapids  hdr,100g,25ge    8x h100
    PHASE sky01a ONLINE = 22  FREE =  2   20 cores   125GB  intel      broadwell       fdr,56g          N/A
    PHASE sky01b ONLINE =  3  FREE =  0   28 cores   503GB  intel      broadwell       fdr,56g          N/A
    PHASE sky01c ONLINE =  6  FREE =  2   20 cores    62GB  intel      broadwell       fdr,56g          4x gtx_1080
    PHASE sky01d ONLINE =  2  FREE =  2   20 cores   125GB  intel      broadwell       fdr,56g          1x p100
    PHASE sky02a ONLINE = 24  FREE =  6   52 cores   753GB  intel      cascadelake     25ge             N/A
    PHASE sky02b ONLINE =  5  FREE =  0   52 cores  1509GB  intel      cascadelake     25ge             N/A
    PHASE sky02c ONLINE =  6  FREE =  3   52 cores   375GB  intel      cascadelake     25ge             8x rtx_6000
    PHASE sky03  ONLINE = 37  FREE =  0  112 cores   503GB  intel      sapphirerapids  25ge             N/A

    NOTE: Please review the RCD documentation on submitting Slurm jobs
          to learn how to request features on nodes.

          For more detailed information, run whatsfree -h
```
