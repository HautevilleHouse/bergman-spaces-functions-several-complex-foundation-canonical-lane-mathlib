import canonicalLaneMathlib.AdmissibleClass
import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanProjection

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure CanonicalLiftingPackage {B : BergmanSpace} {K : BergmanKernelPackage B}
    (P : BergmanProjectionPackage K) where
  liftingMap : Type
  boundedLifting : Prop
  ontoClosedSubspace : Prop
  compatibilityWithProjection : Prop

structure CanonicalLiftingEvidence {B : BergmanSpace} {K : BergmanKernelPackage B}
    {P : BergmanProjectionPackage K} (L : CanonicalLiftingPackage P) where
  boundedLiftingClosed : L.boundedLifting
  ontoClosedSubspaceClosed : L.ontoClosedSubspace
  compatibilityWithProjectionClosed : L.compatibilityWithProjection

definition CanonicalLiftingClosed {B : BergmanSpace} {K : BergmanKernelPackage B}
    {P : BergmanProjectionPackage K} (L : CanonicalLiftingPackage P) : Prop :=
  L.boundedLifting ∧ L.ontoClosedSubspace ∧ L.compatibilityWithProjection

theorem canonical_lifting_closed_from_evidence
    {B : BergmanSpace} {K : BergmanKernelPackage B}
    {P : BergmanProjectionPackage K} (L : CanonicalLiftingPackage P)
    (E : CanonicalLiftingEvidence L) : CanonicalLiftingClosed L := by
  exact And.intro E.boundedLiftingClosed
    (And.intro E.ontoClosedSubspaceClosed E.compatibilityWithProjectionClosed)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse