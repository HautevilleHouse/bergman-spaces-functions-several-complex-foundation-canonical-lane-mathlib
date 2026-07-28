import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse