import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanDomain

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanProjectionPackage where
  projectionOperator : Type u
  boundedOnLp : Prop
  denseRange : Prop
  coreProjection : Prop
  regularityProperties : Prop

structure BergmanProjectionEvidence (P : BergmanProjectionPackage) where
  projectionOperatorClosed : P.projectionOperator
  boundedOnLpClosed : P.boundedOnLp
  denseRangeClosed : P.denseRange
  coreProjectionClosed : P.coreProjection
  regularityPropertiesClosed : P.regularityProperties

def BergmanProjectionClosed (P : BergmanProjectionPackage) : Prop :=
  P.projectionOperator ∧ P.boundedOnLp ∧
  P.denseRange ∧ P.coreProjection ∧ P.regularityProperties

theorem bergman_projection_closed_from_evidence (P : BergmanProjectionPackage) (E : BergmanProjectionEvidence P) :
    BergmanProjectionClosed P := by
  exact And.intro E.projectionOperatorClosed
    (And.intro E.boundedOnLpClosed
      (And.intro E.denseRangeClosed
        (And.intro E.coreProjectionClosed E.regularityPropertiesClosed)))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse