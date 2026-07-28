import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean.BergmanCore

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean

structure BergmanMetricPackage where
  metricDefined : Prop
  kahlerProperty : Prop
  invariantUnderBiholomorphisms : Prop
  completenessProperty : Prop

structure BergmanMetricEvidence (M : BergmanMetricPackage) where
  metricDefinedClosed : M.metricDefined
  kahlerPropertyClosed : M.kahlerProperty
  invariantUnderBiholomorphismsClosed : M.invariantUnderBiholomorphisms
  completenessPropertyClosed : M.completenessProperty

def BergmanMetricClosed (M : BergmanMetricPackage) : Prop :=
  M.metricDefined ∧ M.kahlerProperty ∧ M.invariantUnderBiholomorphisms ∧ M.completenessProperty

theorem bergman_metric_closed_from_evidence (M : BergmanMetricPackage) (E : BergmanMetricEvidence M) :
    BergmanMetricClosed M := by
  exact And.intro E.metricDefinedClosed
    (And.intro E.kahlerPropertyClosed
      (And.intro E.invariantUnderBiholomorphismsClosed E.completenessPropertyClosed))

end BergmanSpacesFunctionsSeveralComplexFoundationCanonicalLaneLean
end HautevilleHouse
