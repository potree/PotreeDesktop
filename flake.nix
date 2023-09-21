{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          overlays = [
            (self: super: {
              nodejs = super.nodejs-18_x;
            })
          ];
          pkgs = import nixpkgs {
            inherit overlays system;

            config.allowUnfree = true;
          };
          libraries = with pkgs; [
            atk
            alsa-lib
            cairo
            cups
            dbus
            expat
            glib
            gtk3
            libdrm
            libxkbcommon
            mesa
            nspr
            nss
            pango
            xorg.libxcb
            xorg.libX11
            xorg.libXcomposite
            xorg.libXdamage
            xorg.libXext
            xorg.libXfixes
            xorg.libXrandr
          ];
        in
        {
          devShells.default = with pkgs; mkShell {
            packages = with pkgs; [
              nodejs
              (pkgs.runCommand "corepack-enable" { } ''
                mkdir -p $out/bin
                ${nodejs}/bin/corepack enable --install-directory $out/bin
              '')
            ] ++ libraries;

            LD_LIBRARY_PATH = lib.makeLibraryPath libraries;
          };
        });
}
