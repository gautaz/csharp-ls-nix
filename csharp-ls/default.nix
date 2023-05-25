{pkgs, ...}: let
  rev = "0.8.0";
in with pkgs; buildDotnetModule {
  name = "csharp-ls";
  version = rev;
  src = fetchFromGitHub {
    owner = "razzmatazz";
    inherit rev;
    repo = "csharp-language-server";
    sha256 = "sha256-JIUYlvZ+9XnisRIgPm0lWsUvgnudUY19rL81iX0Utd4=";
  };
  dotnet-runtime = dotnet-runtime_7;
  dotnet-sdk = dotnet-sdk_7;
  projectFile = "src/CSharpLanguageServer/CSharpLanguageServer.fsproj";
  nugetDeps = ./nuget-deps.nix;
}
