#!/usr/bin/env bash

cargo build --target wasm32-wasi --release

arr=(
    64k
    64k_plus_one
    1m_minus_four_i32
    1m_minus_two_i32
    1m
    1m_plus_one
    1m_plus_64k
    1m_plus_64k_plus_one
    2m
)

echo "wasmtime: compiling using cranelift..."

for t in ${arr[@]}; do
  wasmtime compile --wasm-features all -o target/wasm32-wasi/release/$t.wasmtime target/wasm32-wasi/release/$t.wasm
done

echo "wasmtime: running cranelift version..."

for t in ${arr[@]}; do
  echo "wasmtime $t cranelift:"
  wasmtime run --wasm-features all --allow-precompiled target/wasm32-wasi/release/$t.wasmtime
done

echo "wasmtime end..."
