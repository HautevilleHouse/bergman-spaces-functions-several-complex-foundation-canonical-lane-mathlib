import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanCore

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanKernelPackage where
  kernelDefined : Prop
  reproducingProperty : Prop
  holomorphicInFirstArg : Prop
  holomorphicInSecondArg : Prop

structure BergmanKernelEvidence (P : BergmanKernelPackage) where
  kernelDefinedClosed : P.kernelDefined
  reproducingPropertyClosed : P.reproducingProperty
  holomorphicInFirstArgClosed : P.holomorphicInFirstArg
  holomorphicInSecondArgClosed : P.holomorphicInSecondArg

def BergmanKernelClosed (P : BergmanKernelPackage) : Prop :=
  P.kernelDefined ∧ P.reproducingProperty ∧ P.holomorphicInFirstArg ∧ P.holomorphicInSecondArg

theorem bergman_kernel_closed_from_evidence (P : BergmanKernelPackage) (E : BergmanKernelEvidence P) :
    BergmanKernelClosed P := by
  exact And.intro E.kernelDefinedClosed
    (And.intro E.reproducingPropertyClosed
      (And.intro E.holomorphicInFirstArgClosed E.holomorphicInSecondArgClosed))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse
