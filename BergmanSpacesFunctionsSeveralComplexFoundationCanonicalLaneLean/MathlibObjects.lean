import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  measure : carrier → ℂ
  inner : carrier → carrier → ℂ
  isHilbert : InnerProductSpace ℂ carrier
  evaluationBounded : Prop

structure BergmanAdmittedObject where
  domain : Type u
  domainTopology : TopologicalSpace domain
  bergmanSpace : BergmanSpace
  separable : Prop
  evaluationClosed : bergmanSpace.evaluationBounded
  conclusion : Prop

structure BergmanEndgameState where
  object : BergmanAdmittedObject

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.conclusion

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse