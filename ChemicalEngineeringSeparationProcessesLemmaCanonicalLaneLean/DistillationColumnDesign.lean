import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure DistillationColumnDesignPackage where
  numberOfStages : Nat
  feedStage : Nat
  refluxRatio : Rat
  relativeVolatility : Rat
  distillateComposition : Rat
  bottomsComposition : Rat
  designSpecificationsMet : Prop
  operatingLineEquations : Prop
  equilibriumStageModel : Prop

structure DistillationColumnDesignEvidence (D : DistillationColumnDesignPackage) where
  designSpecificationsMetClosed : D.designSpecificationsMet
  operatingLineEquationsClosed : D.operatingLineEquations
  equilibriumStageModelClosed : D.equilibriumStageModel

def DistillationColumnDesignClosed (D : DistillationColumnDesignPackage) : Prop :=
  D.designSpecificationsMet ∧ D.operatingLineEquations ∧ D.equilibriumStageModel

theorem distillation_column_design_closed_from_evidence
    (D : DistillationColumnDesignPackage) (E : DistillationColumnDesignEvidence D) :
    DistillationColumnDesignClosed D := by
  exact And.intro E.designSpecificationsMetClosed
    (And.intro E.operatingLineEquationsClosed E.equilibriumStageModelClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
