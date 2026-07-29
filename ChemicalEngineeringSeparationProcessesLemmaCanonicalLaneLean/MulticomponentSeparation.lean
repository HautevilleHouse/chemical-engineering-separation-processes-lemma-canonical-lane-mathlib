import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure MulticomponentSeparationPackage where
  componentList : Type u
  relativeVolatilities : Type v
  distributionCoefficients : Type w
  keyComponentsIdentified : Prop
  separationFactorValid : Prop
  productCompositionsComputed : Prop

structure MulticomponentSeparationEvidence (M : MulticomponentSeparationPackage) where
  keyComponentsIdentifiedClosed : M.keyComponentsIdentified
  separationFactorValidClosed : M.separationFactorValid
  productCompositionsComputedClosed : M.productCompositionsComputed

def MulticomponentSeparationClosed (M : MulticomponentSeparationPackage) : Prop :=
  M.keyComponentsIdentified ∧ M.separationFactorValid ∧ M.productCompositionsComputed

theorem multicomponent_separation_closed_from_evidence (M : MulticomponentSeparationPackage)
    (E : MulticomponentSeparationEvidence M) : MulticomponentSeparationClosed M := by
  exact And.intro E.keyComponentsIdentifiedClosed
    (And.intro E.separationFactorValidClosed E.productCompositionsComputedClosed)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse