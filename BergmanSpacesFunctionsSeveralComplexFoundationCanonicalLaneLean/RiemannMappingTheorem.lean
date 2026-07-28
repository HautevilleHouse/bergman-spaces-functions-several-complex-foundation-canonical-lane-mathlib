import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.CauchyIntegralFormula

/-!
# Riemann Mapping Theorem Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure RiemannMappingPackage {Ω : ComplexDomain} (C : CauchyIntegralPackage Ω) where
  conformalMapExistence : Prop
  uniquenessUpToAutomorphism : Prop
  boundaryCorrespondence : Prop

structure RiemannMappingEvidence {Ω : ComplexDomain} {C : CauchyIntegralPackage Ω} (R : RiemannMappingPackage C) where
  conformalMapExistenceClosed : R.conformalMapExistence
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism
  boundaryCorrespondenceClosed : R.boundaryCorrespondence

def RiemannMappingClosed {Ω : ComplexDomain} {C : CauchyIntegralPackage Ω} (R : RiemannMappingPackage C) : Prop :=
  R.conformalMapExistence ∧ R.uniquenessUpToAutomorphism ∧ R.boundaryCorrespondence

theorem riemann_mapping_closed_from_evidence
    {Ω : ComplexDomain} {C : CauchyIntegralPackage Ω} (R : RiemannMappingPackage C)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.conformalMapExistenceClosed (And.intro E.uniquenessUpToAutomorphismClosed E.boundaryCorrespondenceClosed)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse