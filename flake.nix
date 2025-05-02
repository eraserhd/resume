{
  description = "AsciiDoc environment with asciidoctor";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            asciidoctor
            graphviz
          ];

          shellHook = ''
            echo "AsciiDoc environment loaded with asciidoctor $(asciidoctor --version | head -n 1)"
            echo "Run 'asciidoctor file.adoc' to convert AsciiDoc to HTML"
          '';
        };
      }
    );
}
