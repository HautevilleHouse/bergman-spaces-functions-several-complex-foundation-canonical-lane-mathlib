import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.CauchyIntegralFormula

/-!
# Bergman Kernel Construction Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanKernelPackage {Ω : ComplexDomain} {H : HardySpacePackage Ω} (B : BergmanSpacePackage H) where
  kernelFunction : Type
  reproducingProperty : Prop
  explicitFormula : Prop
  boundaryBehavior : Prop

structure BergmanKernelEvidence {Ω : ComplexDomain} {H : HardySpacePackage Ω} {B : BergmanSpacePackage H} (K : BergmanKernelPackage B) where
  reproducingPropertyClosed : K.reproducingProperty
  explicitFormulaClosed : K.explicitFormula
  boundaryBehaviorClosed : K.boundaryBehavior

def BergmanKernelClosed {Ω : ComplexDomain} {H : HardySpacePackage Ω} {B : BergmanSpacePackage H} (K : BergmanKernelPackage B) : Prop :=
  K.reproducingProperty ∧ K.explicitFormula ∧ K.boundaryBehavior

theorem bergman_kernel_closed_from_evidence
    {Ω : ComplexDomain} {H : HardySpacePackage Ω} {B : BergmanSpacePackage H}
    (K : BergmanKernelPackage B) (E : BergmanKernelEvidence K) : BergmanKernelClosed K := by
  exact And.intro E.reproducingPropertyClosed (And.intro E.explicitFormulaClosed E.boundaryBehaviorClosed)

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse