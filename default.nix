{ mkDerivation, aeson, base, base-compat, bytestring, containers
, directory, file-embed, filemanip, filepath, gitrev, hpack, lib
, monad-parallel, mtl, pattern-arrows, process, protolude
, purescript, safe, text, transformers
}:
mkDerivation {
  pname = "psgo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base base-compat bytestring containers directory file-embed
    filemanip filepath gitrev monad-parallel mtl pattern-arrows process
    protolude purescript safe text transformers
  ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    aeson base base-compat bytestring containers directory file-embed
    filemanip filepath gitrev monad-parallel mtl pattern-arrows process
    protolude purescript safe text transformers
  ];
  testHaskellDepends = [
    aeson base base-compat bytestring containers directory file-embed
    filemanip filepath gitrev monad-parallel mtl pattern-arrows process
    protolude purescript safe text transformers
  ];
  prePatch = "hpack";
  homepage = "https://github.com/andyarvanitis/purescript-native#readme";
  license = lib.licenses.bsd3;
}
