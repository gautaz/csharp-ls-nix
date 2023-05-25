# CSharp Language Server Nix Flake

This flake sole purpose is to provide a mean to deploy [razzmatazz's CSharp Language Server](https://github.com/razzmatazz/csharp-language-server) through Nix.

## Updating the NuGet dependencies

The following process will update (recreate) the NuGet dependencies needed to build csharp-ls:

```console
nix build --out-link nuget-deps .#nuget-deps
./nuget-deps csharp-ls/nuget-deps.nix
```
