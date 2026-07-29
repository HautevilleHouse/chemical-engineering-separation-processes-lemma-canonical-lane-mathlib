import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure McCabeThieleMethodPackage where
  equilibriumCurve : Rat → Rat
  operatingLineRectifying : Rat → Rat
  operatingLineStripping : Rat → Rat
  feedLine : Rat → Rat
  numberOfTheoreticalStages : Nat
  graphicalConstructionValid : Prop
  intersectionPointsComputed : Prop

def McCabeThieleMethodEvidence (M : McCabeThieleMethodPackage) where
  graphicalConstructionValidClosed : M.graphicalConstructionValid
  intersectionPointsComputedClosed : M.intersectionPointsComputed

def McCabeThieleMethodClosed (M : McCabeThieleMethodPackage) : Prop :=
  M.graphicalConstructionValid ∧ M.intersectionPointsComputed

theorem mccabe_thiele_method_closed_from_evidence
    (M : McCabeThieleMethodPackage) (E : McCabeThieleMethodEvidence M) :
    McCabeThieleMethodClosed M := by
  exact And.intro E.graphicalConstructionValidClosed E.intersectionPointsComputedClosed

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
