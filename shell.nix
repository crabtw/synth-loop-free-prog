{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    cargo
    rustc
    z3
  ];

  shellHook = ''
    export CARGO_HOME="$(pwd)/.cargo"
  '';
}
