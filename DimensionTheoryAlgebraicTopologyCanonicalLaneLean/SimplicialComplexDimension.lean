import canonicalLaneMathlib.AdmissibleClass

/-!
# Simplicial Complex Dimension Package
-/

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure SimplicialComplexDimensionPackage where
  vertices : Type u
  simplices : List (List (vertices))
  dimension : Nat
  pureComplex : Prop
  locallyFinite : Prop
  dimensionConsistent : Prop

structure SimplicialComplexDimensionEvidence (S : SimplicialComplexDimensionPackage) where
  pureComplexClosed : S.pureComplex
  locallyFiniteClosed : S.locallyFinite
  dimensionConsistentClosed : S.dimensionConsistent

def SimplicialComplexDimensionClosed (S : SimplicialComplexDimensionPackage) : Prop :=
  S.pureComplex ∧ S.locallyFinite ∧ S.dimensionConsistent

theorem simplicial_complex_dimension_closed_from_evidence
    (S : SimplicialComplexDimensionPackage) (E : SimplicialComplexDimensionEvidence S) :
    SimplicialComplexDimensionClosed S := by
  exact And.intro E.pureComplexClosed (And.intro E.locallyFiniteClosed E.dimensionConsistentClosed)

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
