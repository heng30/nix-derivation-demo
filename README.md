### How to build a derivation?
- nix-build <name.nix>

### How to remove a derivation?
- nix-store -d </path/of/the/derivation>

### How to get the derivation absolute path?
- nix-instantiate <name.nix>

### How to use a `nix-shell` command to build a derivation step by step?
- `nix-shell hell-v3.nix`
- `source $setup`
- `unpackPhase`
- `configurePhase`
- `buildPhase`
- `installPhase`
- `fixupPhase`

### References
- [Nix Pills](https://nixos.org/guides/nix-pills/00-preface)
