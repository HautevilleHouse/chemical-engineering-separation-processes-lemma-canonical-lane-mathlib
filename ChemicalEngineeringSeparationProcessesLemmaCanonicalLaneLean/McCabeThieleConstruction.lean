import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure McCabeThielePackage where
  operatingLine : Type u
  equilibriumCurve : Type v
  stagesDefinition : Type w
  operatingLineValid : Prop
  equilibriumCurveValid : Prop
  integerStagesFound : Prop

structure McCabeThieleEvidence (M : McCabeThielePackage) where
  operatingLineValidClosed : M.operatingLineValid
  equilibriumCurveValidClosed : M.equilibriumCurveValid
  integerStagesFoundClosed : M.integerStagesFound

def McCabeThieleClosed (M : McCabeThielePackage) : Prop :=
  M.operatingLineValid ∧ M.equilibriumCurveValid ∧ M.integerStagesFound

theorem mcCabe_thiele_closed_from_evidence (M : McCabeThielePackage)
    (E : McCabeThieleEvidence M) : McCabeThieleClosed M := by
  exact And.intro E.operatingLineValidClosed
    (And.intro E.equilibriumCurveValidClosed E.integerStagesFoundClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse