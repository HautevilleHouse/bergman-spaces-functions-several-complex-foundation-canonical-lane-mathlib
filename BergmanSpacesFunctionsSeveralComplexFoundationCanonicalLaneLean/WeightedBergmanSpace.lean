import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure WeightedBergmanSpace (B : BergmanSpace) where
  weight : B.carrier → ℝ
  weightPositive : ∀ z, weight z > 0
  weightedInner : B.carrier → B.carrier → ℂ
  weightedHilbert : InnerProductSpace ℂ B.carrier
  evaluationBoundedWeighted : Prop

structure WeightedBergmanEvidence (B : BergmanSpace) (W : WeightedBergmanSpace B) where
  weightPositiveClosed : W.weightPositive
  evaluationBoundedWeightedClosed : W.evaluationBoundedWeighted

def WeightedBergmanClosed (B : BergmanSpace) (W : WeightedBergmanSpace B) : Prop :=
  W.weightPositive ∧ W.evaluationBoundedWeighted

theorem weighted_bergman_closed_from_evidence (B : BergmanSpace) (W : WeightedBergmanSpace B) (E : WeightedBergmanEvidence B W) : WeightedBergmanClosed B W := by
  exact And.intro E.weightPositiveClosed E.evaluationBoundedWeightedClosed

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse