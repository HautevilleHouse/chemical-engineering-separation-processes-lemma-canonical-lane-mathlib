import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure ContinuousDistillationPackage where
  feedConditions : Type u
  refluxRatio : Type v
  numberStages : Type w
  feedTrayLocation : Type x
  materialBalanceClosed : Prop
  energyBalanceClosed : Prop
  designSpecificationsMet : Prop

structure ContinuousDistillationEvidence (D : ContinuousDistillationPackage) where
  materialBalanceClosedClosed : D.materialBalanceClosed
  energyBalanceClosedClosed : D.energyBalanceClosed
  designSpecificationsMetClosed : D.designSpecificationsMet

def ContinuousDistillationClosed (D : ContinuousDistillationPackage) : Prop :=
  D.materialBalanceClosed ∧ D.energyBalanceClosed ∧ D.designSpecificationsMet

theorem continuous_distillation_closed_from_evidence (D : ContinuousDistillationPackage)
    (E : ContinuousDistillationEvidence D) : ContinuousDistillationClosed D := by
  exact And.intro E.materialBalanceClosedClosed
    (And.intro E.energyBalanceClosedClosed E.designSpecificationsMetClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse