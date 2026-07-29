import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  separationStatement : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "chemical-engineering-separation-processes-lemma",
    theoremName := "Separation Processes Lemma",
    theoremObject := "SeparationObject",
    classicalBoundary := "classical separation efficiency boundary",
    separationStatement := "bridgeClosed and gateClosed hold for each admissible class",
    carriedRemainder := "remaining open under classical closure"
  }

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse