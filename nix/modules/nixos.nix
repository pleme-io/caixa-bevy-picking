# nix/modules/nixos.nix — auto-generated from bevy_picking.caixa.lisp
# description: "Provides screen picking functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_picking;
in {
  options.services.bevy_picking = {
    enable = lib.mkEnableOption "bevy_picking";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_picking or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
