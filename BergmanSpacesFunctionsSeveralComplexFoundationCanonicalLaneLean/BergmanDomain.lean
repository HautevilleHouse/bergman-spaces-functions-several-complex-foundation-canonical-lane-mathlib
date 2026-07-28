import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanAdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanKernelPackage where
  kernelFormula : Type u
  holomorphicInFirst : Prop
  antiholomorphicInSecond : Prop
  reproducingProperty : Prop
  explicitFormulaKnown : Prop

structure BergmanKernelEvidence (K : BergmanKernelPackage) where
  kernelFormulaClosed : K.kernelFormula
  holomorphicInFirstClosed : K.holomorphicInFirst
  antiholomorphicInSecondClosed : K.antiholomorphicInSecond
  reproducingPropertyClosed : K.reproducingProperty
  explicitFormulaKnownClosed : K.explicitFormulaKnown

def BergmanKernelClosed (K : BergmanKernelPackage) : Prop :=
  K.kernelFormula ∧ K.holomorphicInFirst ∧
  K.antiholomorphicInSecond ∧ K.reproducingProperty ∧ K.explicitFormulaKnown

theorem bergman_kernel_closed_from_evidence (K : BergmanKernelPackage) (E : BergmanKernelEvidence K) :
    BergmanKernelClosed K := by
  exact And.intro E.kernelFormulaClosed
    (And.intro E.holomorphicInFirstClosed
      (And.intro E.antiholomorphicInSecondClosed
        (And.intro E.reproducingPropertyClosed E.explicitFormulaKnownClosed)))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse