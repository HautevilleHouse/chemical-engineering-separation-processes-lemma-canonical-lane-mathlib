import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure SeparationProcess where
  feedStream : Type
  productStream : Type
  separationFactor : Prop
  energyConsumption : Prop
  equilibriumConstraint : Prop

definition SeparationProcessAdmittedObject (S : SeparationProcess) : Prop :=
  S.separationFactor ∧ S.equilibriumConstraint

structure SeparationProcessEvidence (S : SeparationProcess) where
  separationFactorClosed : S.separationFactor
  equilibriumConstraintClosed : S.equilibriumConstraint

def SeparationProcessClosed (S : SeparationProcess) : Prop :=
  S.separationFactor ∧ S.equilibriumConstraint

theorem separation_process_closed_from_evidence (S : SeparationProcess) (E : SeparationProcessEvidence S) :
    SeparationProcessClosed S := by
  exact And.intro E.separationFactorClosed E.equilibriumConstraintClosed

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse