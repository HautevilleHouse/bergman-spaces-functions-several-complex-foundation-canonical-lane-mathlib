import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BoundaryBehavior (Ω : Type*) [TopologicalSpace Ω] [ComplexManifold Ω] where
  domain : Ω
  boundary : Set Ω
  kernel : BergmanKernel Ω
  boundaryAsymptotics : Prop
  blowupRate : Prop
  nontangentialLimits : Prop
  boundaryRegularity : Prop

structure BoundaryBehaviorEvidence (B : BoundaryBehavior) where
  boundaryAsymptoticsClosed : B.boundaryAsymptotics
  blowupRateClosed : B.blowupRate
  nontangentialLimitsClosed : B.nontangentialLimits
  boundaryRegularityClosed : B.boundaryRegularity

def BoundaryBehaviorClosed (B : BoundaryBehavior) : Prop :=
  B.boundaryAsymptotics ∧ B.blowupRate ∧ B.nontangentialLimits ∧ B.boundaryRegularity

theorem boundary_behavior_closed_from_evidence (B : BoundaryBehavior) (E : BoundaryBehaviorEvidence B) : BoundaryBehaviorClosed B := by
  exact And.intro E.boundaryAsymptoticsClosed (And.intro E.blowupRateClosed (And.intro E.nontangentialLimitsClosed E.boundaryRegularityClosed))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse