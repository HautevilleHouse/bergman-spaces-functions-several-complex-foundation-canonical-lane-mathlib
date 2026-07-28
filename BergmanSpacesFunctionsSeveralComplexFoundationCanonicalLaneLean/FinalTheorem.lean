import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

def ConstrainedBergmanClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bergman_endgame (A : AdmissibleClass) : ConstrainedBergmanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse