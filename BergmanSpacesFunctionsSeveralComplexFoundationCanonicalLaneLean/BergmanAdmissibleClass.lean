import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanSpace where
  domain : Type u
  dimension : Nat
  boundedDomain : Prop
  pseudoconvex : Prop

structure BergmanAdmittedObject where
  space : BergmanSpace
  weightFunction : Type v
  bergmanKernel : Type w
  kernelSquareIntegrable : Prop
  reproducingProperty : Prop
  conclusion : kernelSquareIntegrable ∧ reproducingProperty

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.conclusion

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse