import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.SeparationColumnModel

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure UnderwoodPackage (C : SeparationColumn) where
  underwoodConstants : List Rat
  minimumRefluxRectifying : Rat
  minimumRefluxStripping : Rat
  minimumRefluxOverall : Rat
  underwoodEquations : Prop

structure UnderwoodEvidence {C : SeparationColumn} (U : UnderwoodPackage C) where
  underwoodConstantsNotEmpty : U.underwoodConstants ≠ []
  underwoodEquationsClosed : U.underwoodEquations
  minimumRefluxOverallPositive : U.minimumRefluxOverall > 0

def UnderwoodClosed {C : SeparationColumn} (U : UnderwoodPackage C) : Prop :=
  U.underwoodConstants ≠ [] ∧ U.underwoodEquations ∧ U.minimumRefluxOverall > 0

theorem underwood_closed_from_evidence {C : SeparationColumn} (U : UnderwoodPackage C) (E : UnderwoodEvidence U) : UnderwoodClosed U :=
  And.intro E.underwoodConstantsNotEmpty (And.intro E.underwoodEquationsClosed E.minimumRefluxOverallPositive)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
