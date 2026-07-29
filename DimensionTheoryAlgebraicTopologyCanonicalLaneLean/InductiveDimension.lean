import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyCanonicalLaneLean

structure InductiveDimensionPackage where
  space : Type
  topology : TopologicalSpace space
  baseDimension : ℕ
  inductiveStep : Prop
  dimensionValue : ℕ
  dimensionComputed : dimensionValue = baseDimension ∨ inductiveStep

def InductiveDimensionClosed (I : InductiveDimensionPackage) : Prop :=
  I.dimensionComputed

theorem inductive_dimension_closed (I : InductiveDimensionPackage) : InductiveDimensionClosed I := by
  exact I.dimensionComputed

end DimensionTheoryAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse