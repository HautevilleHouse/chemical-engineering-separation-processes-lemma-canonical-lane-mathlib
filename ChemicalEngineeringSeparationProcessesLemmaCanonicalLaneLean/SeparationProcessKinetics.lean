import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure SeparationKineticsPackage where
  reactionRateModel : Type u
  massTransferCoefficient : Type v
  equilibriumRelation : Type w
  rateExpressionValid : Prop
  equilibriumLinearity : Prop

structure SeparationKineticsEvidence (K : SeparationKineticsPackage) where
  rateExpressionValidClosed : K.rateExpressionValid
  equilibriumLinearityClosed : K.equilibriumLinearity

def SeparationKineticsClosed (K : SeparationKineticsPackage) : Prop :=
  K.rateExpressionValid ∧ K.equilibriumLinearity

theorem separation_kinetics_closed_from_evidence (K : SeparationKineticsPackage)
    (E : SeparationKineticsEvidence K) : SeparationKineticsClosed K := by
  exact And.intro E.rateExpressionValidClosed E.equilibriumLinearityClosed

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse