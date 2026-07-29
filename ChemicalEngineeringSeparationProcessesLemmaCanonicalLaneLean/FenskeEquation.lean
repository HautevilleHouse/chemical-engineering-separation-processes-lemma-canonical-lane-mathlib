import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.SeparationColumnModel

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure FenskeEquationPackage (C : SeparationColumn) where
  minimumTheoreticalStages : Nat
  keyComponents : Nat
  alphaAverage : Rat
  fenskeEquationDerived : Prop
  minimumRefluxRatio : Rat

structure FenskeEquationEvidence {C : SeparationColumn} (F : FenskeEquationPackage C) where
  minimumTheoreticalStagesPositive : F.minimumTheoreticalStages > 0
  fenskeEquationDerivedClosed : F.fenskeEquationDerived
  minimumRefluxRatioPositive : F.minimumRefluxRatio > 0

def FenskeEquationClosed {C : SeparationColumn} (F : FenskeEquationPackage C) : Prop :=
  F.minimumTheoreticalStages > 0 ∧ F.fenskeEquationDerived ∧ F.minimumRefluxRatio > 0

theorem fenske_equation_closed_from_evidence {C : SeparationColumn} (F : FenskeEquationPackage C) (E : FenskeEquationEvidence F) : FenskeEquationClosed F :=
  And.intro E.minimumTheoreticalStagesPositive (And.intro E.fenskeEquationDerivedClosed E.minimumRefluxRatioPositive)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
