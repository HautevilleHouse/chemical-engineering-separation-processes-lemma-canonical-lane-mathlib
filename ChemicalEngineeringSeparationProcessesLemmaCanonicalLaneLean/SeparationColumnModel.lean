import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.MassTransfer

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure SeparationColumnModelPackage {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} where
  columnGeometry : Prop
  operatingLines : Prop
  stageEfficiency : Prop
  separationSpecification : Prop

structure SeparationColumnModelEvidence {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} (S : SeparationColumnModelPackage M) where
  columnGeometryClosed : S.columnGeometry
  operatingLinesClosed : S.operatingLines
  stageEfficiencyClosed : S.stageEfficiency
  separationSpecificationClosed : S.separationSpecification

def SeparationColumnModelClosed {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} (S : SeparationColumnModelPackage M) : Prop :=
  S.columnGeometry ∧ S.operatingLines ∧ S.stageEfficiency ∧ S.separationSpecification

theorem separation_column_model_closed_from_evidence {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} (S : SeparationColumnModelPackage M) (E : SeparationColumnModelEvidence S) :
    SeparationColumnModelClosed S := by
  exact And.intro E.columnGeometryClosed (And.intro E.operatingLinesClosed (And.intro E.stageEfficiencyClosed E.separationSpecificationClosed))

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
