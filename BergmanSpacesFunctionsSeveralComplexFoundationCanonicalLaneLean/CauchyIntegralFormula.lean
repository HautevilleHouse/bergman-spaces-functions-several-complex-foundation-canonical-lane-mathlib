import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.ComplexDomain

/-!
# Cauchy Integral Formula Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure CauchyIntegralPackage (Ω : ComplexDomain) where
  holomorphicFunction : Type
  integralRepresentation : Prop
  derivativeFormula : Prop
  uniformConvergence : Prop

structure CauchyIntegralEvidence {Ω : ComplexDomain} (C : CauchyIntegralPackage Ω) where
  integralRepresentationClosed : C.integralRepresentation
  derivativeFormulaClosed : C.derivativeFormula
  uniformConvergenceClosed : C.uniformConvergence

def CauchyIntegralClosed {Ω : ComplexDomain} (C : CauchyIntegralPackage Ω) : Prop :=
  C.integralRepresentation ∧ C.derivativeFormula ∧ C.uniformConvergence

theorem cauchy_integral_closed_from_evidence
    {Ω : ComplexDomain} (C : CauchyIntegralPackage Ω) (E : CauchyIntegralEvidence C) :
    CauchyIntegralClosed C := by
  exact And.intro E.integralRepresentationClosed (And.intro E.derivativeFormulaClosed E.uniformConvergenceClosed)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse