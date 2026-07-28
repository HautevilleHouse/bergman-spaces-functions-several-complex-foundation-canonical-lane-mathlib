import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanCore

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanBoundaryBehaviorPackage where
  boundaryBehaviorDescribed : Prop
  fatouTypeTheorem : Prop
  boundaryValuesExist : Prop
  boundarySmoothnessProp : Prop

structure BergmanBoundaryBehaviorEvidence (B : BergmanBoundaryBehaviorPackage) where
  boundaryBehaviorDescribedClosed : B.boundaryBehaviorDescribed
  fatouTypeTheoremClosed : B.fatouTypeTheorem
  boundaryValuesExistClosed : B.boundaryValuesExist
  boundarySmoothnessPropClosed : B.boundarySmoothnessProp

def BergmanBoundaryBehaviorClosed (B : BergmanBoundaryBehaviorPackage) : Prop :=
  B.boundaryBehaviorDescribed ∧ B.fatouTypeTheorem ∧ B.boundaryValuesExist ∧ B.boundarySmoothnessProp

theorem bergman_boundary_behavior_closed_from_evidence (B : BergmanBoundaryBehaviorPackage) (E : BergmanBoundaryBehaviorEvidence B) :
    BergmanBoundaryBehaviorClosed B := by
  exact And.intro E.boundaryBehaviorDescribedClosed
    (And.intro E.fatouTypeTheoremClosed
      (And.intro E.boundaryValuesExistClosed E.boundarySmoothnessPropClosed))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse
