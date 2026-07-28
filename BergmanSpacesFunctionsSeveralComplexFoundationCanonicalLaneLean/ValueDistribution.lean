import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.AnalyticContinuation

/-!
# Value Distribution Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure ValueDistributionPackage {Ω : ComplexDomain} {A : AnalyticContinuationPackage (someRiemannPackage Ω)} where
  picardTheorem : Prop
  nevanlinnaTheory : Prop
  defectRelation : Prop

structure ValueDistributionEvidence {Ω : ComplexDomain} {A : AnalyticContinuationPackage (someRiemannPackage Ω)} (V : ValueDistributionPackage A) where
  picardTheoremClosed : V.picardTheorem
  nevanlinnaTheoryClosed : V.nevanlinnaTheory
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed {Ω : ComplexDomain} {A : AnalyticContinuationPackage (someRiemannPackage Ω)} (V : ValueDistributionPackage A) : Prop :=
  V.picardTheorem ∧ V.nevanlinnaTheory ∧ V.defectRelation

theorem value_distribution_closed_from_evidence
    {Ω : ComplexDomain} {A : AnalyticContinuationPackage (someRiemannPackage Ω)} (V : ValueDistributionPackage A)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.picardTheoremClosed (And.intro E.nevanlinnaTheoryClosed E.defectRelationClosed)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse