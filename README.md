### How to build a derivation?
- nix-build </path/of/name.nix>
- nix-build -A <name>

### How to remove a derivation?
- nix-store --delete </path/of/the/derivation>

### How to get the derivation absolute path?
- nix-instantiate <name.nix>
- nix-instantiate <name>

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
