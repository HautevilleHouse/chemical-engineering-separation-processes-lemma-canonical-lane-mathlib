import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure VaporLiquidEquilibrium where
  temperature : Type
  pressure : Type
  kValue : Prop
  raoultLawDeviation : Prop
  activityCoefficientModel : Prop

structure VaporLiquidEquilibriumEvidence (E : VaporLiquidEquilibrium) where
  kValueClosed : E.kValue
  raoultLawDeviationClosed : E.raoultLawDeviation
  activityCoefficientModelClosed : E.activityCoefficientModel

def VaporLiquidEquilibriumClosed (E : VaporLiquidEquilibrium) : Prop :=
  E.kValue ∧ E.raoultLawDeviation ∧ E.activityCoefficientModel

theorem vapor_liquid_equilibrium_closed_from_evidence (E : VaporLiquidEquilibrium) (Ev : VaporLiquidEquilibriumEvidence E) :
    VaporLiquidEquilibriumClosed E := by
  exact And.intro Ev.kValueClosed (And.intro Ev.raoultLawDeviationClosed Ev.activityCoefficientModelClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse