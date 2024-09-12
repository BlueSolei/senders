
#!/bin bash

script_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
root=$script_dir/..

wget -O $root/cmake/CPM.cmake https://github.com/cpm-cmake/CPM.cmake/releases/latest/download/get_cpm.cmake

