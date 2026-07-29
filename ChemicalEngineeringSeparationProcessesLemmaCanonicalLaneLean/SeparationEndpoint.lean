import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.SeparationColumnModel

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure SeparationEndpointPackage {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} {S : SeparationColumnModelPackage M} where
  targetPurity : Prop
  recoveryTarget : Prop
  endpointAchieved : Prop

structure SeparationEndpointEvidence {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} {S : SeparationColumnModelPackage M} (E : SeparationEndpointPackage S) where
  targetPurityClosed : E.targetPurity
  recoveryTargetClosed : E.recoveryTarget
  endpointAchievedClosed : E.endpointAchieved

def SeparationEndpointClosed {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} {S : SeparationColumnModelPackage M} (E : SeparationEndpointPackage S) : Prop :=
  E.targetPurity ∧ E.recoveryTarget ∧ E.endpointAchieved

theorem separation_endpoint_closed_from_evidence {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} {S : SeparationColumnModelPackage M} (E : SeparationEndpointPackage S) (Ev : SeparationEndpointEvidence E) :
    SeparationEndpointClosed E := by
  exact And.intro Ev.targetPurityClosed (And.intro Ev.recoveryTargetClosed Ev.endpointAchievedClosed)

theorem separation_endpoint_supplies_statement {P : PhaseEquilibriumPackage} {M : MassTransferPackage P} {S : SeparationColumnModelPackage M} (E : SeparationEndpointPackage S) :
    E.endpointAchieved := E.endpointAchieved

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
