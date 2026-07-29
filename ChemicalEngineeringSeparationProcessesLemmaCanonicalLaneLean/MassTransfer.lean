import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.PhaseEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure MassTransferPackage {P : PhaseEquilibriumPackage} where
  diffusionCoefficients : Prop
  massTransferCoefficients : Prop
  concentrationProfiles : Prop
  fluxExpressions : Prop

structure MassTransferEvidence {P : PhaseEquilibriumPackage} (M : MassTransferPackage P) where
  diffusionCoefficientsClosed : M.diffusionCoefficients
  massTransferCoefficientsClosed : M.massTransferCoefficients
  concentrationProfilesClosed : M.concentrationProfiles
  fluxExpressionsClosed : M.fluxExpressions

def MassTransferClosed {P : PhaseEquilibriumPackage} (M : MassTransferPackage P) : Prop :=
  M.diffusionCoefficients ∧ M.massTransferCoefficients ∧ M.concentrationProfiles ∧ M.fluxExpressions

theorem mass_transfer_closed_from_evidence {P : PhaseEquilibriumPackage} (M : MassTransferPackage P) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.diffusionCoefficientsClosed (And.intro E.massTransferCoefficientsClosed (And.intro E.concentrationProfilesClosed E.fluxExpressionsClosed))

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
