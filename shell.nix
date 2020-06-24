let

  pkgs = import (builtins.fetchTarball {
    name = "nixos-unstable";
    url = https://github.com/nixos/nixpkgs-channels/archive/22c98819ccdf042b30103d827d35644ed0f17831.tar.gz;
    sha256 = "067sz4zskc7ad1cjxhszgdqzm51969jyqlkz2rss0y5a7y3pli91";
  }) {};

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
