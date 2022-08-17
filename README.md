# Space Jam ☄️
#### An optimized tool to minimize storage utilization for omics data.

While data storage needs are ever increasing, there are certain steps that can be taken to efficiently store and transfer existing data.

The most important action is to compress data that is not immediately needed. Escpecially, compressing file types that contain text data e.g., any file containing sequences, can reduce a file's size by **40–90%**.
This also plays an important role when data is uploaded to cloud storage, as it drastically reduces transfer times and monthly storage costs, **which needs to be accounted for years and decades**!

The compression script includes many of the common file formats which give space savings, while excluding binary formats like `.bam`.
The script utilizes [pigz](https://zlib.net/pigz/) which is a parallel implementation of gzip and provides a _P_ fold increase in compression speed, where _P_ is the number of CPU cores.

The script was tested on macOS and Linux.  
The script can be executed as a Slurm job, please request CPUs based on the `-p` value set in the script.  

Default value for `-p` set to `4` to be suitable for personal machines and servers. Number of CPUs `-p` tested upto 32 cores.

### pigz Linux Installation
Ubuntu: `$ sudo apt install pigz`  
RHEL/Fedora/CentOS: `sudo dnf install pigz`

### pigz macOS Installation
To install pigz on Intel or Apple Silicon (M1 and newer) Macs, first install [Homebrew](https://brew.sh) and then `$ brew install pigz`.

## Usage
To use the scripts, copy them to your home directory.  
`chmod +x fast_compress_files.sh fast_decompress_files.sh`  
`./fast_compress_files.sh <path_to_dir_to_compress>`  
From the top level directory path, the scripts will find all the files (in subdirectories also) that match the extensions.
