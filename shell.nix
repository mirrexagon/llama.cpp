{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "ggml-llama-env";

  buildInputs = with pkgs.python3Packages; [
    python
    torch
    numpy
    sentencepiece
  ];
}
