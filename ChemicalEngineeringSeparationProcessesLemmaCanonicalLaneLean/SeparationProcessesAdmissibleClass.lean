import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure SeparationProcessAdmittedObject where
  mixture : Type
  components : List mixture
  separationTarget : Prop
  separationFeasible : Prop
  conclusion : separationFeasible

structure AdmissibleClass where
  object : SeparationProcessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.separationFeasible) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse