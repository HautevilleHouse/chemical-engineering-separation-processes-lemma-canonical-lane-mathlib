import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.SeparationProcessObjects
import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.EquilibriumStageModel
import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.VaporLiquidEquilibrium
import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.McCabeThieleMethod
import ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean.MassTransferModel

namespace HautevilleHouse
namespace ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SeparationProcessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedSeparationProcessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_separation_process_closure (A : AdmissibleClass) :
    ConstrainedSeparationProcessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringSeparationProcessesLemmaCanonicalLaneLean
end HautevilleHouse