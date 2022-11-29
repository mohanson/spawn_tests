set -ex

make() {
    clang-format -i $1.c
	riscv64-unknown-elf-gcc -o build/$1 -I/home/ubuntu/src/ckb-c-stdlib $1.c
}

make get_memory_limit
make set_content
make spawn_big_content_length
make spawn_big_memory_size
make spawn_callee_exec_callee
make spawn_callee_exec_caller
make spawn_callee_get_memory_limit
make spawn_callee_out_of_cycles
make spawn_callee_set_content
# make spawn_callee_strcat
make spawn_caller_exec
make spawn_caller_get_memory_limit
make spawn_caller_out_of_cycles
make spawn_caller_out_of_cycles_wrap
make spawn_caller_set_content
make spawn_caller_strcat_wrap
make spawn_caller_strcat
make spawn_caller_strcat_data_hash
make spawn_recursive
