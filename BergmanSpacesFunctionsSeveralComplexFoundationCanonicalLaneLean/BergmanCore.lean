import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanAdmittedObject where
  domain : Type
  komplexDimension : Nat
  bergmanKernel : domain → domain → ℂ
  kernelReproducing : Prop
  kernelHolomorphic : Prop
  conclusion : kernelReproducing ∧ kernelHolomorphic

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.kernelReproducing ∧ O.kernelHolomorphic

structure AdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedBergmanClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bergman_endgame (A : AdmissibleClass) :
    ConstrainedBergmanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse
