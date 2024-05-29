# Build Sandbox Container
```
    sbatch buildSandbox.sh
```

# Post Install Sandbox Configuration
```
    salloc --cpus-per-task 16 --mem 32gb --time 01:00:00
    apptainer shell --writable --fakeroot archDDD.sandbox/
    sudo pacman -S python cmake gcc boost fftw pybind11 eigen
```


