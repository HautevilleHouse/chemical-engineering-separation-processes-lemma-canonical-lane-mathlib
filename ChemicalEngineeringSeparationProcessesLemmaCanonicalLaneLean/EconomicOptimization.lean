import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure EconomicOptimizationPackage where
  capitalCostModel : Type u
  operatingCostModel : Type v
  objectiveFunction : Type w
  costParametersValid : Prop
  optimumFound : Prop
  constraintsSatisfied : Prop

structure EconomicOptimizationEvidence (E : EconomicOptimizationPackage) where
  costParametersValidClosed : E.costParametersValid
  optimumFoundClosed : E.optimumFound
  constraintsSatisfiedClosed : E.constraintsSatisfied

def EconomicOptimizationClosed (E : EconomicOptimizationPackage) : Prop :=
  E.costParametersValid ∧ E.optimumFound ∧ E.constraintsSatisfied

theorem economic_optimization_closed_from_evidence (E : EconomicOptimizationPackage)
    (Ev : EconomicOptimizationEvidence E) : EconomicOptimizationClosed E := by
  exact And.intro Ev.costParametersValidClosed
    (And.intro Ev.optimumFoundClosed Ev.constraintsSatisfiedClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse