{ pkgs ? import <nixpkgs> {} }:
(pkgs.buildFHSEnv {
  name = "chatterbox";
  targetPkgs = pkgs: (with pkgs; [
    python311
    python311Packages.pip
    python311Packages.virtualenv
    zlib
  ]);
  runScript = "bash --init-file /etc/profile";
}).env

