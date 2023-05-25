{
  description = "CSharp Language Server";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/master";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux = rec {
      default = import ./csharp-ls {
        pkgs = import nixpkgs { system = "x86_64-linux"; };
      };
      nuget-deps = default.passthru.fetch-deps;
    };
  };
}
