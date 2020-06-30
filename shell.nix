let

  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};

in pkgs.mkShell {
  buildInputs = with pkgs; [
    cargo
    rustc
    z3
  ];

  shellHook = ''
    export CARGO_HOME="$(pwd)/.cargo"
  '';
}
