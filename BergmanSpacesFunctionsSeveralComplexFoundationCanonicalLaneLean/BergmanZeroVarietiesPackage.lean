import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanDomain

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanZeroVarietiesPackage where
  zeroVarietyCharacterization : Type u
  divisibilityProperty : Prop
  vanishingOrder : Prop
  uniquenessTheorem : Prop
  geometricConstraints : Prop

structure BergmanZeroVarietiesEvidence (Z : BergmanZeroVarietiesPackage) where
  zeroVarietyCharacterizationClosed : Z.zeroVarietyCharacterization
  divisibilityPropertyClosed : Z.divisibilityProperty
  vanishingOrderClosed : Z.vanishingOrder
  uniquenessTheoremClosed : Z.uniquenessTheorem
  geometricConstraintsClosed : Z.geometricConstraints

def BergmanZeroVarietiesClosed (Z : BergmanZeroVarietiesPackage) : Prop :=
  Z.zeroVarietyCharacterization ∧ Z.divisibilityProperty ∧
  Z.vanishingOrder ∧ Z.uniquenessTheorem ∧ Z.geometricConstraints

theorem bergman_zero_varieties_closed_from_evidence (Z : BergmanZeroVarietiesPackage) (E : BergmanZeroVarietiesEvidence Z) :
    BergmanZeroVarietiesClosed Z := by
  exact And.intro E.zeroVarietyCharacterizationClosed
    (And.intro E.divisibilityPropertyClosed
      (And.intro E.vanishingOrderClosed
        (And.intro E.uniquenessTheoremClosed E.geometricConstraintsClosed)))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse