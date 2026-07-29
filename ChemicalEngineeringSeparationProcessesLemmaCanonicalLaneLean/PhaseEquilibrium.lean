import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure PhaseEquilibriumPackage where
  mixtureComponents : Type
  temperature : Type
  pressure : Type
  fugacityCoefficients : Prop
  phaseCompositions : Prop
  equilibriumCondition : fugacityCoefficients ∧ phaseCompositions

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  fugacityCoefficientsClosed : P.fugacityCoefficients
  phaseCompositionsClosed : P.phaseCompositions

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  P.fugacityCoefficients ∧ P.phaseCompositions

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibriumPackage) (E : PhaseEquilibriumEvidence P) :
    PhaseEquilibriumClosed P := by
  exact And.intro E.fugacityCoefficientsClosed E.phaseCompositionsClosed

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
