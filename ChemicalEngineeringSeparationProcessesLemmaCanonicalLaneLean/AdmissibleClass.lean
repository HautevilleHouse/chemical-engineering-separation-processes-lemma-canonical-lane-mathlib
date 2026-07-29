import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

structure SeparationAdmittedObject where
  mixture : Type
  thermodynamicState : Prop
  separationProcess : Prop
  separationAchieved : Prop
  conclusion : separationAchieved

structure AdmissibleClass where
  object : SeparationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.separationAchieved ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse
