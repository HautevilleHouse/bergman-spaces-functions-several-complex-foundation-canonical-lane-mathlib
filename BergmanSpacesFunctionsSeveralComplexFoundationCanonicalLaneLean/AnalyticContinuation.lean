import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.RiemannMappingTheorem

/-!
# Analytic Continuation Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure AnalyticContinuationPackage {Ω : ComplexDomain} {R : RiemannMappingPackage (someCauchyPackage Ω)} where
  continuationExistence : Prop
  monodromyTheorem : Prop
  naturalBoundary : Prop

structure AnalyticContinuationEvidence {Ω : ComplexDomain} {R : RiemannMappingPackage (someCauchyPackage Ω)} (A : AnalyticContinuationPackage R) where
  continuationExistenceClosed : A.continuationExistence
  monodromyTheoremClosed : A.monodromyTheorem
  naturalBoundaryClosed : A.naturalBoundary

def AnalyticContinuationClosed {Ω : ComplexDomain} {R : RiemannMappingPackage (someCauchyPackage Ω)} (A : AnalyticContinuationPackage R) : Prop :=
  A.continuationExistence ∧ A.monodromyTheorem ∧ A.naturalBoundary

theorem analytic_continuation_closed_from_evidence
    {Ω : ComplexDomain} {R : RiemannMappingPackage (someCauchyPackage Ω)} (A : AnalyticContinuationPackage R)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.continuationExistenceClosed (And.intro E.monodromyTheoremClosed E.naturalBoundaryClosed)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse