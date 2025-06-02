{pkgs, ...}: {
  packages = with pkgs; [
    # Code formatting tools
    alejandra
    treefmt
    mdl

    # Documentation toolchain
    mdbook
    mdbook-mermaid

    # ADR helper tool
    adrs
  ];
}
