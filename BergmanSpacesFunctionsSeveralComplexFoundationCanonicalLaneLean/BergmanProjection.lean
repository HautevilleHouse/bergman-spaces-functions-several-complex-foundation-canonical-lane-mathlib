import canonicalLaneMathlib.AdmissibleClass
import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.AdmissibleClass
import BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanKernel

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanProjectionPackage {B : BergmanSpace} (K : BergmanKernelPackage B) where
  boundedness : Prop
  selfAdjoint : Prop
  orthogonalProjection : Prop
  idempotence : Prop

structure BergmanProjectionEvidence {B : BergmanSpace} {K : BergmanKernelPackage B} 
    (P : BergmanProjectionPackage K) where
  boundednessClosed : P.boundedness
  selfAdjointClosed : P.selfAdjoint
  orthogonalProjectionClosed : P.orthogonalProjection
  idempotenceClosed : P.idempotence

definition BergmanProjectionClosed {B : BergmanSpace} {K : BergmanKernelPackage B} 
    (P : BergmanProjectionPackage K) : Prop :=
  P.boundedness ∧ P.selfAdjoint ∧ P.orthogonalProjection ∧ P.idempotence

theorem bergman_projection_closed_from_evidence
    {B : BergmanSpace} {K : BergmanKernelPackage B} 
    (P : BergmanProjectionPackage K) (E : BergmanProjectionEvidence P) :
    BergmanProjectionClosed P := by
  exact And.intro E.boundednessClosed
    (And.intro E.selfAdjointClosed
      (And.intro E.orthogonalProjectionClosed E.idempotenceClosed))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse