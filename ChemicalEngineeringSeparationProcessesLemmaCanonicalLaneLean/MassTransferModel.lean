import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure MassTransferModel where
  flux : Type
  drivingForce : Type
  massTransferCoefficient : Prop
  filmTheory : Prop
  penetrationModel : Prop

structure MassTransferModelEvidence (M : MassTransferModel) where
  massTransferCoefficientClosed : M.massTransferCoefficient
  filmTheoryClosed : M.filmTheory
  penetrationModelClosed : M.penetrationModel

def MassTransferModelClosed (M : MassTransferModel) : Prop :=
  M.massTransferCoefficient ∧ M.filmTheory ∧ M.penetrationModel

theorem mass_transfer_model_closed_from_evidence (M : MassTransferModel) (E : MassTransferModelEvidence M) :
    MassTransferModelClosed M := by
  exact And.intro E.massTransferCoefficientClosed (And.intro E.filmTheoryClosed E.penetrationModelClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse