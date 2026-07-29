import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.SeparationProcessesAdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure EquilibriumStageModel where
  vaporComposition : Type
  liquidComposition : Type
  equilibriumRelation : Prop
  stageEfficiency : Prop
  operatingLine : Prop

structure EquilibriumStageEvidence (E : EquilibriumStageModel) where
  equilibriumRelationClosed : E.equilibriumRelation
  stageEfficiencyClosed : E.stageEfficiency
  operatingLineClosed : E.operatingLine

def EquilibriumStageClosed (E : EquilibriumStageModel) : Prop :=
  E.equilibriumRelation ∧ E.stageEfficiency ∧ E.operatingLine

theorem equilibrium_stage_closed_from_evidence (E : EquilibriumStageModel)
    (Ev : EquilibriumStageEvidence E) : EquilibriumStageClosed E := by
  exact And.intro Ev.equilibriumRelationClosed
    (And.intro Ev.stageEfficiencyClosed Ev.operatingLineClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse