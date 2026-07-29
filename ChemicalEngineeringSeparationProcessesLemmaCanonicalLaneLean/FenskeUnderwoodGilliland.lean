import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure FenskeUnderwoodGillilandPackage where
  minimumRefluxRatio : Rat
  minimumNumberOfStages : Nat
  actualNumberOfStages : Nat
  gillilandCorrelation : Rat
  fenskeEquationValid : Prop
  underwoodEquationValid : Prop
  gillilandCorrelationValid : Prop

structure FenskeUnderwoodGillilandEvidence (F : FenskeUnderwoodGillilandPackage) where
  fenskeEquationValidClosed : F.fenskeEquationValid
  underwoodEquationValidClosed : F.underwoodEquationValid
  gillilandCorrelationValidClosed : F.gillilandCorrelationValid

def FenskeUnderwoodGillilandClosed (F : FenskeUnderwoodGillilandPackage) : Prop :=
  F.fenskeEquationValid ∧ F.underwoodEquationValid ∧ F.gillilandCorrelationValid

theorem fenske_underwood_gilliland_closed_from_evidence
    (F : FenskeUnderwoodGillilandPackage) (E : FenskeUnderwoodGillilandEvidence F) :
    FenskeUnderwoodGillilandClosed F := by
  exact And.intro E.fenskeEquationValidClosed
    (And.intro E.underwoodEquationValidClosed E.gillilandCorrelationValidClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
