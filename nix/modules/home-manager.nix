# nix/modules/home-manager.nix — auto-generated from bevy_picking.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_picking; in {
  options.programs.bevy_picking = {
    enable = lib.mkEnableOption "bevy_picking";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_picking or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
